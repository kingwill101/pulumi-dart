import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_block_io_tune.dart';
import 'domain_clock.dart';
import 'domain_cpu.dart';
import 'domain_cpu_tune.dart';
import 'domain_create.dart';
import 'domain_default_io_thread.dart';
import 'domain_destroy.dart';
import 'domain_devices.dart';
import 'domain_features.dart';
import 'domain_id_map.dart';
import 'domain_io_thread_ids.dart';
import 'domain_key_wrap.dart';
import 'domain_launch_security.dart';
import 'domain_memory_backing.dart';
import 'domain_memory_tune.dart';
import 'domain_metadata.dart';
import 'domain_numa_tune.dart';
import 'domain_os.dart';
import 'domain_perf.dart';
import 'domain_pm.dart';
import 'domain_resource.dart';
import 'domain_sec_label.dart';
import 'domain_sys_info.dart';
import 'domain_throttle_groups.dart';
import 'domain_vcpus.dart';
import '../internal/package_registration.dart' as package_registration;

/// Manages a libvirt domain (virtual machine).
///
/// This resource follows the [libvirt domain XML schema](https://libvirt.org/formatdomain.html) closely,
/// providing fine-grained control over VM configuration.
///
/// ## Example Usage
///
///
/// ```yaml
/// resources:
///   # Basic VM configuration
///   example:
///     type: libvirt:Domain
///     properties:
///       name: example-vm
///       memory: 2048
///       memoryUnit: MiB
///       vcpu: 2
///       type: kvm
///       os:
///         type: hvm
///         typeArch: x86_64
///         typeMachine: q35
///         bootDevices:
///           - hd
///           - network
///       devices:
///         disks:
///           - source:
///               file:
///                 file: /var/lib/libvirt/images/example.qcow2
///             target:
///               dev: vda
///               bus: virtio
///         interfaces:
///           - model:
///               type: virtio
///             source:
///               network:
///                 network: default
///   # VM with UEFI firmware
///   uefiExample:
///     type: libvirt:Domain
///     name: uefi_example
///     properties:
///       name: uefi-vm
///       memory: 4096
///       memoryUnit: MiB
///       vcpu: 4
///       type: kvm
///       os:
///         type: hvm
///         typeArch: x86_64
///         typeMachine: q35
///         firmware: efi
///         loader: /usr/share/edk2/x64/OVMF_CODE.secboot.4m.fd
///         loaderReadonly: true
///         loaderType: pflash
///         nvRam:
///           nvRam: /var/lib/libvirt/qemu/nvram/uefi-vm.fd
///           template: /usr/share/edk2/x64/OVMF_VARS.4m.fd
///         bootDevices:
///           - hd
///   # VM with direct kernel boot
///   kernelBoot:
///     type: libvirt:Domain
///     name: kernel_boot
///     properties:
///       name: kernel-boot-vm
///       memory: 1024
///       memoryUnit: MiB
///       vcpu: 1
///       type: kvm
///       os:
///         type: hvm
///         typeArch: x86_64
///         kernel: /boot/vmlinuz
///         initrd: /boot/initrd.img
///         kernelArgs: console=ttyS0 root=/dev/vda1
/// ```
class Domain extends pulumi.CustomResource {
  /// Whether the domain should be started automatically when the host boots.
  late final pulumi.Output<bool?> autostart;
  /// Configures block I/O tuning parameters for the domain, allowing control over I/O performance settings.
  late final pulumi.Output<DomainBlockIoTune?> blockIoTune;
  /// Specifies the bootloader that the domain uses to boot the operating system.
  late final pulumi.Output<String?> bootloader;
  /// Defines arguments passed to the bootloader during the boot process.
  late final pulumi.Output<String?> bootloaderArgs;
  /// Configures the timing settings for the domain's virtual clock.
  late final pulumi.Output<DomainClock?> clock;
  /// CPU allocation and topology configuration
  late final pulumi.Output<DomainCpu?> cpu;
  /// Configures CPU tuning options that affect performance management for the domain.
  late final pulumi.Output<DomainCpuTune?> cpuTune;
  /// Start behavior flags passed to libvirt when running is true.
  late final pulumi.Output<DomainCreate?> create;
  /// Specifies the current amount of memory assigned to the domain, impacting its operational capacity and performance.
  late final pulumi.Output<double?> currentMemory;
  /// Defines the unit of measurement for the current memory assigned to the domain, ensuring clarity in memory specifications.
  late final pulumi.Output<String?> currentMemoryUnit;
  /// Sets the default IO thread configuration for the domain, facilitating efficient management of IO operations.
  late final pulumi.Output<DomainDefaultIoThread?> defaultIoThread;
  /// Provides a human-readable description of the domain, assisting in the identification and documentation of domain settings.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<DomainDestroy?> destroy;
  /// Devices provided to the guest domain
  late final pulumi.Output<DomainDevices?> devices;
  /// Exposes the numeric domain ID assigned by libvirt at runtime; this value is computed by libvirt and is read-only.
  ///
  /// See: <https://libvirt.org/formatdomain.html#element-and-attribute-overview>
  late final pulumi.Output<double> domainId;
  /// Hypervisor features that can be toggled on/off
  late final pulumi.Output<DomainFeatures?> features;
  /// Holds the generation ID for the domain, used to track configuration changes and provide uniqueness.
  late final pulumi.Output<String?> genId;
  /// Sets a unique identifier for the hardware of the domain, allowing system management tools to refer to it distinctly.
  late final pulumi.Output<String?> hwuuid;
  /// Configures the mapping of user IDs for the domain, allowing control over user permissions and access.
  late final pulumi.Output<DomainIdMap?> idMap;
  /// Configures the identification of I/O threads used by the domain.
  late final pulumi.Output<DomainIoThreadIDs?> ioThreadIDs;
  /// Sets the number of I/O threads allocated to the domain for processing.
  late final pulumi.Output<double?> ioThreads;
  /// Configures key wrapping for cryptographic operations in the domain.
  late final pulumi.Output<DomainKeyWrap?> keyWrap;
  /// Configures launch security features for the domain to protect sensitive information.
  late final pulumi.Output<DomainLaunchSecurity?> launchSecurity;
  /// Configures the maximum memory allocation for the domain at boot time.
  late final pulumi.Output<double?> maximumMemory;
  /// Configures the total number of memory slots that can be used in the domain.
  late final pulumi.Output<double?> maximumMemorySlots;
  /// Sets the unit for maximum memory allocation in the domain configuration.
  late final pulumi.Output<String?> maximumMemoryUnit;
  /// Maximum memory allocation for the guest at boot time
  late final pulumi.Output<double?> memory;
  /// Configures how the guest’s RAM is backed by host memory, including huge pages, locking, sharing, access policy, allocation policy, and discard behavior.
  late final pulumi.Output<DomainMemoryBacking?> memoryBacking;
  /// Controls whether guest memory is included in the core dump when the domain crashes, by setting the memory attribute (dumpCore) on the domain element; valid values are user-provided according to libvirt’s dumpCore policy (e.g. enabling or disabling memory dumping).
  ///
  /// See: <https://libvirt.org/formatdomain.html#memory-allocation>
  late final pulumi.Output<String?> memoryDumpCore;
  /// Configures memory tuning parameters for the guest, including soft, hard, and swap limits and minimum guarantees.
  late final pulumi.Output<DomainMemoryTune?> memoryTune;
  /// Sets the unit for the domain’s main memory value, typically as a memory size unit such as KiB, MiB, or GiB; the string is user-provided and must match libvirt’s accepted memory units.
  ///
  /// See: <https://libvirt.org/formatdomain.html#memory-allocation>
  late final pulumi.Output<String?> memoryUnit;
  /// Configures an arbitrary metadata block associated with the domain, typically used to store application- or tool-specific XML or other structured data.
  late final pulumi.Output<DomainMetadata?> metadata;
  /// Configures the name of the domain, which should be unique within the host environment.
  late final pulumi.Output<String> name;
  /// Configures NUMA policy for the domain process and its memory, controlling how guest CPUs and memory are placed on host NUMA nodes.
  late final pulumi.Output<DomainNumaTune?> numaTune;
  /// Sets the action libvirt takes when the guest crashes; valid values include "destroy", "restart", "preserve", "coredump-destroy", "coredump-restart", "rename-restart", "ignore", or "pause". Example: "coredump-restart" keeps a crash dump and then restarts the domain.
  ///
  /// See: <https://libvirt.org/formatdomain.html#events-configuration>
  late final pulumi.Output<String?> onCrash;
  /// Sets the action libvirt takes when the guest issues a poweroff/shutdown; valid values include "destroy", "restart", "preserve", or "rename-restart". If unset, the hypervisor default is used.
  ///
  /// See: <https://libvirt.org/formatdomain.html#events-configuration>
  late final pulumi.Output<String?> onPoweroff;
  /// Sets the action libvirt takes when the guest reboots; valid values include "destroy", "restart", "preserve", "rename-restart", "ignore", or "pause". If unset, the hypervisor default is used.
  ///
  /// See: <https://libvirt.org/formatdomain.html#events-configuration>
  late final pulumi.Output<String?> onReboot;
  /// Groups configuration of how the guest operating system is booted, including firmware, BIOS, boot devices, kernel parameters, and related options. All sub-attributes are optional and user-provided.
  late final pulumi.Output<DomainOs?> os;
  /// Enables configuration of performance monitoring events exposed to the guest and collected by the hypervisor.
  late final pulumi.Output<DomainPerf?> perf;
  /// Configures power management behavior advertised to the guest, such as support for suspend-to-RAM and suspend-to-disk.
  late final pulumi.Output<DomainPm?> pm;
  /// Groups resource-partitioning settings that associate the domain with hypervisor-specific resource partitions or classes.
  late final pulumi.Output<DomainResource?> resource;
  /// Whether the domain should be started after creation.
  late final pulumi.Output<bool?> running;
  /// Configures one security label configuration for the domain, controlling how a security driver (such as SELinux or DAC) labels and isolates the domain and its resources.
  ///
  /// See: <https://libvirt.org/formatdomain.html#security-label>
  late final pulumi.Output<List<DomainSecLabel>?> secLabels;
  /// Configures system information presented to the guest (such as SMBIOS and fw_cfg data), allowing customization of what hardware/firmware details the guest sees.
  ///
  /// See: <https://libvirt.org/formatdomain.html#smbios-system-information>
  late final pulumi.Output<List<DomainSysInfo>?> sysInfos;
  /// Enables configuration of one or more named disk I/O throttle groups that can be referenced by disk `throttlefilters` to apply shared I/O rate limits.
  late final pulumi.Output<DomainThrottleGroups?> throttleGroups;
  /// Sets a human‑readable title for the domain, which is user‑provided free text and may be used by management tools but has no functional effect on the guest.
  ///
  /// See: <https://libvirt.org/formatdomain.html#general-metadata>
  late final pulumi.Output<String?> title;
  /// Sets the type of domain, specifying which hypervisor is to be used for running the virtual machine.
  late final pulumi.Output<String> type;
  /// Sets the domain’s UUID; if omitted libvirt generates one, and any provided value must be a valid RFC‑4122‑style UUID string.
  ///
  /// See: <https://libvirt.org/formatdomain.html#general-metadata>
  late final pulumi.Output<String> uuid;
  /// Sets the maximum number of virtual CPUs configured for the guest, as a positive integer within the hypervisor’s supported range (for example 1–255).
  ///
  /// See: <https://libvirt.org/formatdomain.html#cpu-allocation>
  late final pulumi.Output<double?> vcpu;
  /// Sets the optional CPU affinity for all vCPUs using a cpuset expression (for example "0-3,8"), corresponding to the vcpu element’s cpuset attribute.
  ///
  /// See: <https://libvirt.org/formatdomain.html#cpu-allocation>
  late final pulumi.Output<String?> vcpuCpuset;
  /// Sets the number of vCPUs that are initially online at boot via the vcpu element’s current attribute, as a positive integer not exceeding domain.vcpu.
  ///
  /// See: <https://libvirt.org/formatdomain.html#cpu-allocation>
  late final pulumi.Output<double?> vcpuCurrent;
  /// Sets the vCPU placement policy via the vcpu element’s placement attribute, typically "static" or "auto", controlling whether libvirt chooses NUMA/CPU placement automatically.
  ///
  /// See: <https://libvirt.org/formatdomain.html#cpu-allocation>
  late final pulumi.Output<String?> vcpuPlacement;
  /// Enables per‑vCPU configuration; when present, it contains one or more vcpu entries that can individually control online state and pinning.
  late final pulumi.Output<DomainVcpus?> vcpus;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_index_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    this.autostart = registerOutput<bool?>('autostart');
    this.blockIoTune = registerOutput<DomainBlockIoTune?>('blockIoTune');
    this.bootloader = registerOutput<String?>('bootloader');
    this.bootloaderArgs = registerOutput<String?>('bootloaderArgs');
    this.clock = registerOutput<DomainClock?>('clock');
    this.cpu = registerOutput<DomainCpu?>('cpu');
    this.cpuTune = registerOutput<DomainCpuTune?>('cpuTune');
    this.create = registerOutput<DomainCreate?>('create');
    this.currentMemory = registerOutput<double?>('currentMemory');
    this.currentMemoryUnit = registerOutput<String?>('currentMemoryUnit');
    this.defaultIoThread = registerOutput<DomainDefaultIoThread?>('defaultIoThread');
    this.description = registerOutput<String?>('description');
    this.destroy = registerOutput<DomainDestroy?>('destroy');
    this.devices = registerOutput<DomainDevices?>('devices');
    this.domainId = registerOutput<double>('domainId');
    this.features = registerOutput<DomainFeatures?>('features');
    this.genId = registerOutput<String?>('genId');
    this.hwuuid = registerOutput<String?>('hwuuid');
    this.idMap = registerOutput<DomainIdMap?>('idMap');
    this.ioThreadIDs = registerOutput<DomainIoThreadIDs?>('ioThreadIDs');
    this.ioThreads = registerOutput<double?>('ioThreads');
    this.keyWrap = registerOutput<DomainKeyWrap?>('keyWrap');
    this.launchSecurity = registerOutput<DomainLaunchSecurity?>('launchSecurity');
    this.maximumMemory = registerOutput<double?>('maximumMemory');
    this.maximumMemorySlots = registerOutput<double?>('maximumMemorySlots');
    this.maximumMemoryUnit = registerOutput<String?>('maximumMemoryUnit');
    this.memory = registerOutput<double?>('memory');
    this.memoryBacking = registerOutput<DomainMemoryBacking?>('memoryBacking');
    this.memoryDumpCore = registerOutput<String?>('memoryDumpCore');
    this.memoryTune = registerOutput<DomainMemoryTune?>('memoryTune');
    this.memoryUnit = registerOutput<String?>('memoryUnit');
    this.metadata = registerOutput<DomainMetadata?>('metadata');
    this.name = registerOutput<String>('name');
    this.numaTune = registerOutput<DomainNumaTune?>('numaTune');
    this.onCrash = registerOutput<String?>('onCrash');
    this.onPoweroff = registerOutput<String?>('onPoweroff');
    this.onReboot = registerOutput<String?>('onReboot');
    this.os = registerOutput<DomainOs?>('os');
    this.perf = registerOutput<DomainPerf?>('perf');
    this.pm = registerOutput<DomainPm?>('pm');
    this.resource = registerOutput<DomainResource?>('resource');
    this.running = registerOutput<bool?>('running');
    this.secLabels = registerOutput<List<DomainSecLabel>?>('secLabels');
    this.sysInfos = registerOutput<List<DomainSysInfo>?>('sysInfos');
    this.throttleGroups = registerOutput<DomainThrottleGroups?>('throttleGroups');
    this.title = registerOutput<String?>('title');
    this.type = registerOutput<String>('type');
    this.uuid = registerOutput<String>('uuid');
    this.vcpu = registerOutput<double?>('vcpu');
    this.vcpuCpuset = registerOutput<String?>('vcpuCpuset');
    this.vcpuCurrent = registerOutput<double?>('vcpuCurrent');
    this.vcpuPlacement = registerOutput<String?>('vcpuPlacement');
    this.vcpus = registerOutput<DomainVcpus?>('vcpus');
  }
}
