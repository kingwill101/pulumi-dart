// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_acpi.dart';
import 'domain_devices_interface_alias.dart';
import 'domain_devices_interface_backend.dart';
import 'domain_devices_interface_backend_domain.dart';
import 'domain_devices_interface_bandwidth.dart';
import 'domain_devices_interface_boot.dart';
import 'domain_devices_interface_coalesce.dart';
import 'domain_devices_interface_down_script.dart';
import 'domain_devices_interface_driver.dart';
import 'domain_devices_interface_filter_ref.dart';
import 'domain_devices_interface_guest.dart';
import 'domain_devices_interface_ip.dart';
import 'domain_devices_interface_link.dart';
import 'domain_devices_interface_mac.dart';
import 'domain_devices_interface_model.dart';
import 'domain_devices_interface_mtu.dart';
import 'domain_devices_interface_port_forward.dart';
import 'domain_devices_interface_port_options.dart';
import 'domain_devices_interface_rom.dart';
import 'domain_devices_interface_route.dart';
import 'domain_devices_interface_script.dart';
import 'domain_devices_interface_source.dart';
import 'domain_devices_interface_target.dart';
import 'domain_devices_interface_teaming.dart';
import 'domain_devices_interface_tune.dart';
import 'domain_devices_interface_virtual_port.dart';
import 'domain_devices_interface_vlan.dart';
import 'domain_devices_interface_wait_for_ip.dart';

class DomainDevicesInterface {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesInterfaceAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesInterfaceAlias? alias;
  /// Configures the backend settings for the network interface.
  final DomainDevicesInterfaceBackend? backend;
  /// Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  final DomainDevicesInterfaceBackendDomain? backendDomain;
  /// Configures bandwidth parameters for the interface, controlling the traffic shaping and quality of service settings.
  final DomainDevicesInterfaceBandwidth? bandwidth;
  /// Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  final DomainDevicesInterfaceBoot? boot;
  /// Configures coalescing settings for the interface, optimizing the processing of network packets to reduce overhead and improve performance.
  final DomainDevicesInterfaceCoalesce? coalesce;
  /// Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  final DomainDevicesInterfaceDownScript? downScript;
  /// Configures parameters for the interface driver, which manages the interaction between the virtual network interface and the guest OS.
  final DomainDevicesInterfaceDriver? driver;
  /// Specifies a reference to a filter associated with the network interface.
  final DomainDevicesInterfaceFilterRef? filterRef;
  /// Configures guest settings related to the network interface.
  final DomainDevicesInterfaceGuest? guest;
  /// Configures the IP settings for the network interface.
  final List<DomainDevicesInterfaceIp>? ips;
  /// Defines settings related to the link state of the network interface.
  final DomainDevicesInterfaceLink? link;
  /// Sets the MAC address for the network interface.
  final DomainDevicesInterfaceMac? mac;
  /// Indicates whether the interface is managed by libvirt.
  final bool? managed;
  /// Configures the model type of the network interface.
  final DomainDevicesInterfaceModel? model;
  /// Configures the maximum transmission unit size for the network interface.
  final DomainDevicesInterfaceMtu? mtu;
  /// Configures port forwarding settings for the network interface.
  final List<DomainDevicesInterfacePortForward>? portForwards;
  /// Configures additional options for network interface ports.
  final DomainDevicesInterfacePortOptions? portOptions;
  /// Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  final DomainDevicesInterfaceRom? rom;
  /// Configures routing settings for the network interface.
  final List<DomainDevicesInterfaceRoute>? routes;
  /// Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  final DomainDevicesInterfaceScript? script;
  /// Configures the source of the network interface, specifying how the interface connects to the network.
  final DomainDevicesInterfaceSource? source;
  /// Defines the target interface configuration for the virtual interface.
  final DomainDevicesInterfaceTarget? target;
  /// Configures the teaming settings for the PCI device.
  final DomainDevicesInterfaceTeaming? teaming;
  /// Configures whether to trust guest receive filters on the virtual interface.
  final String? trustGuestRxFilters;
  /// Provides tuning options for the network interface.
  final DomainDevicesInterfaceTune? tune;
  /// Configures the parameters for the virtual port associated with the interface.
  final DomainDevicesInterfaceVirtualPort? virtualPort;
  /// Configures VLAN settings for the virtual network interface.
  final DomainDevicesInterfaceVlan? vlan;
  final DomainDevicesInterfaceWaitForIp? waitForIp;

  /// Creates a new [DomainDevicesInterface].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Configures the backend settings for the network interface.
  /// [backendDomain] Specifies the backend domain associated with the interface, allowing for advanced network configurations.
  /// [bandwidth] Configures bandwidth parameters for the interface, controlling the traffic shaping and quality of service settings.
  /// [boot] Configures the boot settings for the redirected device, controlling its initialization at domain startup.
  /// [coalesce] Configures coalescing settings for the interface, optimizing the processing of network packets to reduce overhead and improve performance.
  /// [downScript] Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  /// [driver] Configures parameters for the interface driver, which manages the interaction between the virtual network interface and the guest OS.
  /// [filterRef] Specifies a reference to a filter associated with the network interface.
  /// [guest] Configures guest settings related to the network interface.
  /// [ips] Configures the IP settings for the network interface.
  /// [link] Defines settings related to the link state of the network interface.
  /// [mac] Sets the MAC address for the network interface.
  /// [managed] Indicates whether the interface is managed by libvirt.
  /// [model] Configures the model type of the network interface.
  /// [mtu] Configures the maximum transmission unit size for the network interface.
  /// [portForwards] Configures port forwarding settings for the network interface.
  /// [portOptions] Configures additional options for network interface ports.
  /// [rom] Defines the ROM configuration for the host device, allowing for BIOS settings and options.
  /// [routes] Configures routing settings for the network interface.
  /// [script] Specifies a script to be executed when the interface is taken down, allowing for custom cleanup or configuration actions.
  /// [source] Configures the source of the network interface, specifying how the interface connects to the network.
  /// [target] Defines the target interface configuration for the virtual interface.
  /// [teaming] Configures the teaming settings for the PCI device.
  /// [trustGuestRxFilters] Configures whether to trust guest receive filters on the virtual interface.
  /// [tune] Provides tuning options for the network interface.
  /// [virtualPort] Configures the parameters for the virtual port associated with the interface.
  /// [vlan] Configures VLAN settings for the virtual network interface.
  /// [waitForIp] Optional.
  DomainDevicesInterface({
    this.acpi,
    this.address,
    this.alias,
    this.backend,
    this.backendDomain,
    this.bandwidth,
    this.boot,
    this.coalesce,
    this.downScript,
    this.driver,
    this.filterRef,
    this.guest,
    this.ips,
    this.link,
    this.mac,
    this.managed,
    this.model,
    this.mtu,
    this.portForwards,
    this.portOptions,
    this.rom,
    this.routes,
    this.script,
    this.source,
    this.target,
    this.teaming,
    this.trustGuestRxFilters,
    this.tune,
    this.virtualPort,
    this.vlan,
    this.waitForIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'backend': ?backend == null ? null : backend!.toMap(),
      'backendDomain': ?backendDomain == null ? null : backendDomain!.toMap(),
      'bandwidth': ?bandwidth == null ? null : bandwidth!.toMap(),
      'boot': ?boot == null ? null : boot!.toMap(),
      'coalesce': ?coalesce == null ? null : coalesce!.toMap(),
      'downScript': ?downScript == null ? null : downScript!.toMap(),
      'driver': ?driver == null ? null : driver!.toMap(),
      'filterRef': ?filterRef == null ? null : filterRef!.toMap(),
      'guest': ?guest == null ? null : guest!.toMap(),
      'ips': ?ips == null ? null : pulumi.Input.encodeList<DomainDevicesInterfaceIp, Map<String, dynamic>>(ips!, (value) => value.toMap()),
      'link': ?link == null ? null : link!.toMap(),
      'mac': ?mac == null ? null : mac!.toMap(),
      'managed': ?managed,
      'model': ?model == null ? null : model!.toMap(),
      'mtu': ?mtu == null ? null : mtu!.toMap(),
      'portForwards': ?portForwards == null ? null : pulumi.Input.encodeList<DomainDevicesInterfacePortForward, Map<String, dynamic>>(portForwards!, (value) => value.toMap()),
      'portOptions': ?portOptions == null ? null : portOptions!.toMap(),
      'rom': ?rom == null ? null : rom!.toMap(),
      'routes': ?routes == null ? null : pulumi.Input.encodeList<DomainDevicesInterfaceRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'script': ?script == null ? null : script!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
      'teaming': ?teaming == null ? null : teaming!.toMap(),
      'trustGuestRxFilters': ?trustGuestRxFilters,
      'tune': ?tune == null ? null : tune!.toMap(),
      'virtualPort': ?virtualPort == null ? null : virtualPort!.toMap(),
      'vlan': ?vlan == null ? null : vlan!.toMap(),
      'waitForIp': ?waitForIp == null ? null : waitForIp!.toMap(),
    };
  }

  factory DomainDevicesInterface.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterface(
      acpi: map['acpi'] == null ? null : DomainDevicesInterfaceAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesInterfaceAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      backend: map['backend'] == null ? null : DomainDevicesInterfaceBackend.fromMap((map['backend'] as Map).cast<String, dynamic>()),
      backendDomain: map['backendDomain'] == null ? null : DomainDevicesInterfaceBackendDomain.fromMap((map['backendDomain'] as Map).cast<String, dynamic>()),
      bandwidth: map['bandwidth'] == null ? null : DomainDevicesInterfaceBandwidth.fromMap((map['bandwidth'] as Map).cast<String, dynamic>()),
      boot: map['boot'] == null ? null : DomainDevicesInterfaceBoot.fromMap((map['boot'] as Map).cast<String, dynamic>()),
      coalesce: map['coalesce'] == null ? null : DomainDevicesInterfaceCoalesce.fromMap((map['coalesce'] as Map).cast<String, dynamic>()),
      downScript: map['downScript'] == null ? null : DomainDevicesInterfaceDownScript.fromMap((map['downScript'] as Map).cast<String, dynamic>()),
      driver: map['driver'] == null ? null : DomainDevicesInterfaceDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      filterRef: map['filterRef'] == null ? null : DomainDevicesInterfaceFilterRef.fromMap((map['filterRef'] as Map).cast<String, dynamic>()),
      guest: map['guest'] == null ? null : DomainDevicesInterfaceGuest.fromMap((map['guest'] as Map).cast<String, dynamic>()),
      ips: map['ips'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfaceIp>(map['ips'], (value) => DomainDevicesInterfaceIp.fromMap((value as Map).cast<String, dynamic>())),
      link: map['link'] == null ? null : DomainDevicesInterfaceLink.fromMap((map['link'] as Map).cast<String, dynamic>()),
      mac: map['mac'] == null ? null : DomainDevicesInterfaceMac.fromMap((map['mac'] as Map).cast<String, dynamic>()),
      managed: map['managed'] == null ? null : map['managed'] as bool,
      model: map['model'] == null ? null : DomainDevicesInterfaceModel.fromMap((map['model'] as Map).cast<String, dynamic>()),
      mtu: map['mtu'] == null ? null : DomainDevicesInterfaceMtu.fromMap((map['mtu'] as Map).cast<String, dynamic>()),
      portForwards: map['portForwards'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfacePortForward>(map['portForwards'], (value) => DomainDevicesInterfacePortForward.fromMap((value as Map).cast<String, dynamic>())),
      portOptions: map['portOptions'] == null ? null : DomainDevicesInterfacePortOptions.fromMap((map['portOptions'] as Map).cast<String, dynamic>()),
      rom: map['rom'] == null ? null : DomainDevicesInterfaceRom.fromMap((map['rom'] as Map).cast<String, dynamic>()),
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfaceRoute>(map['routes'], (value) => DomainDevicesInterfaceRoute.fromMap((value as Map).cast<String, dynamic>())),
      script: map['script'] == null ? null : DomainDevicesInterfaceScript.fromMap((map['script'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesInterfaceSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : DomainDevicesInterfaceTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
      teaming: map['teaming'] == null ? null : DomainDevicesInterfaceTeaming.fromMap((map['teaming'] as Map).cast<String, dynamic>()),
      trustGuestRxFilters: map['trustGuestRxFilters'] == null ? null : map['trustGuestRxFilters'] as String,
      tune: map['tune'] == null ? null : DomainDevicesInterfaceTune.fromMap((map['tune'] as Map).cast<String, dynamic>()),
      virtualPort: map['virtualPort'] == null ? null : DomainDevicesInterfaceVirtualPort.fromMap((map['virtualPort'] as Map).cast<String, dynamic>()),
      vlan: map['vlan'] == null ? null : DomainDevicesInterfaceVlan.fromMap((map['vlan'] as Map).cast<String, dynamic>()),
      waitForIp: map['waitForIp'] == null ? null : DomainDevicesInterfaceWaitForIp.fromMap((map['waitForIp'] as Map).cast<String, dynamic>()),
    );
  }
}

