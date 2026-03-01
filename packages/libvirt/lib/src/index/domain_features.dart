// ignore_for_file: unused_element, unnecessary_cast

import 'domain_features_aia.dart';
import 'domain_features_apic.dart';
import 'domain_features_async_teardown.dart';
import 'domain_features_capabilities.dart';
import 'domain_features_ccf_assist.dart';
import 'domain_features_cfpc.dart';
import 'domain_features_gic.dart';
import 'domain_features_hap.dart';
import 'domain_features_hpt.dart';
import 'domain_features_htm.dart';
import 'domain_features_hyper_v.dart';
import 'domain_features_ibs.dart';
import 'domain_features_ioapic.dart';
import 'domain_features_kvm.dart';
import 'domain_features_msrs.dart';
import 'domain_features_nested_hv.dart';
import 'domain_features_pmu.dart';
import 'domain_features_ps2.dart';
import 'domain_features_pv_spinlock.dart';
import 'domain_features_ras.dart';
import 'domain_features_sbbc.dart';
import 'domain_features_smm.dart';
import 'domain_features_tcg.dart';
import 'domain_features_vm_core_info.dart';
import 'domain_features_vm_port.dart';
import 'domain_features_xen.dart';

class DomainFeatures {
  /// Controls ACPI support for the domain, allowing for power management and sleep states within the guest OS.
  final bool? acpi;
  /// Enables or disables AIA (Advanced Interrupt Affinity) support for the domain, which optimizes interrupt handling.
  final DomainFeaturesAia? aia;
  /// Configures APIC (Advanced Programmable Interrupt Controller) support for the domain, which is essential for handling interrupts.
  final DomainFeaturesApic? apic;
  /// Configures asynchronous teardown behavior for the domain, enhancing performance during shutdown processes.
  final DomainFeaturesAsyncTeardown? asyncTeardown;
  /// Defines the set of capabilities that can be enabled for the domain, influencing its operational features and constraints.
  final DomainFeaturesCapabilities? capabilities;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesCcfAssist? ccfAssist;
  /// Configures whether the domain supports CFPC features.
  final DomainFeaturesCfpc? cfpc;
  /// Configures whether the domain supports GIC (Generic Interrupt Controller) features.
  final DomainFeaturesGic? gic;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHap? hap;
  /// Configures whether the domain supports Hardware Paging Translation (HPT).
  final DomainFeaturesHpt? hpt;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHtm? htm;
  /// Configures the availability of Hyper-V specific features for the domain.
  final DomainFeaturesHyperV? hyperV;
  /// Configures the Instruction Based Sampling feature for the domain.
  final DomainFeaturesIbs? ibs;
  /// Controls the configuration of the I/O APIC feature in the domain.
  final DomainFeaturesIoapic? ioapic;
  /// Configures the availability of KVM specific features for the domain.
  final DomainFeaturesKvm? kvm;
  /// Controls the management of Model Specific Registers (MSRs) for the guest, allowing for low-level CPU features.
  final DomainFeaturesMsrs? msrs;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesNestedHv? nestedHv;
  /// Enables PAE (Physical Address Extension) feature, allowing the guest to support more than 4GB of RAM.
  final bool? pae;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesPmu? pmu;
  /// Configures the private network feature, allowing for isolated network configurations within the guest.
  final bool? privNet;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesPs2? ps2;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesPvSpinlock? pvSpinlock;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesRas? ras;
  /// Configures Shared Bandwidth Bridge Capability (SBBC) to optimize bandwidth sharing among VMs.
  final DomainFeaturesSbbc? sbbc;
  /// Enables Secure Memory Management (SMM), providing additional security features for the guest.
  final DomainFeaturesSmm? smm;
  /// Enables Trusted Computing Group (TCG) features for secure computing environments.
  final DomainFeaturesTcg? tcg;
  /// Enables Viridian features for enhanced virtualization capabilities on Windows guests.
  final bool? viridian;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesVmCoreInfo? vmCoreInfo;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesVmPort? vmPort;
  /// Enables or disables features specific to Xen virtualization, controlling various aspects of guest management.
  final DomainFeaturesXen? xen;

  /// Creates a new [DomainFeatures].
  /// [acpi] Controls ACPI support for the domain, allowing for power management and sleep states within the guest OS.
  /// [aia] Enables or disables AIA (Advanced Interrupt Affinity) support for the domain, which optimizes interrupt handling.
  /// [apic] Configures APIC (Advanced Programmable Interrupt Controller) support for the domain, which is essential for handling interrupts.
  /// [asyncTeardown] Configures asynchronous teardown behavior for the domain, enhancing performance during shutdown processes.
  /// [capabilities] Defines the set of capabilities that can be enabled for the domain, influencing its operational features and constraints.
  /// [ccfAssist] Enables or disables support for PS/2 devices in the virtual machine.
  /// [cfpc] Configures whether the domain supports CFPC features.
  /// [gic] Configures whether the domain supports GIC (Generic Interrupt Controller) features.
  /// [hap] Enables or disables support for PS/2 devices in the virtual machine.
  /// [hpt] Configures whether the domain supports Hardware Paging Translation (HPT).
  /// [htm] Enables or disables support for PS/2 devices in the virtual machine.
  /// [hyperV] Configures the availability of Hyper-V specific features for the domain.
  /// [ibs] Configures the Instruction Based Sampling feature for the domain.
  /// [ioapic] Controls the configuration of the I/O APIC feature in the domain.
  /// [kvm] Configures the availability of KVM specific features for the domain.
  /// [msrs] Controls the management of Model Specific Registers (MSRs) for the guest, allowing for low-level CPU features.
  /// [nestedHv] Enables or disables support for PS/2 devices in the virtual machine.
  /// [pae] Enables PAE (Physical Address Extension) feature, allowing the guest to support more than 4GB of RAM.
  /// [pmu] Enables or disables support for PS/2 devices in the virtual machine.
  /// [privNet] Configures the private network feature, allowing for isolated network configurations within the guest.
  /// [ps2] Enables or disables support for PS/2 devices in the virtual machine.
  /// [pvSpinlock] Enables or disables support for PS/2 devices in the virtual machine.
  /// [ras] Enables or disables support for PS/2 devices in the virtual machine.
  /// [sbbc] Configures Shared Bandwidth Bridge Capability (SBBC) to optimize bandwidth sharing among VMs.
  /// [smm] Enables Secure Memory Management (SMM), providing additional security features for the guest.
  /// [tcg] Enables Trusted Computing Group (TCG) features for secure computing environments.
  /// [viridian] Enables Viridian features for enhanced virtualization capabilities on Windows guests.
  /// [vmCoreInfo] Enables or disables support for PS/2 devices in the virtual machine.
  /// [vmPort] Enables or disables support for PS/2 devices in the virtual machine.
  /// [xen] Enables or disables features specific to Xen virtualization, controlling various aspects of guest management.
  DomainFeatures({
    this.acpi,
    this.aia,
    this.apic,
    this.asyncTeardown,
    this.capabilities,
    this.ccfAssist,
    this.cfpc,
    this.gic,
    this.hap,
    this.hpt,
    this.htm,
    this.hyperV,
    this.ibs,
    this.ioapic,
    this.kvm,
    this.msrs,
    this.nestedHv,
    this.pae,
    this.pmu,
    this.privNet,
    this.ps2,
    this.pvSpinlock,
    this.ras,
    this.sbbc,
    this.smm,
    this.tcg,
    this.viridian,
    this.vmCoreInfo,
    this.vmPort,
    this.xen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi,
      'aia': ?aia == null ? null : aia!.toMap(),
      'apic': ?apic == null ? null : apic!.toMap(),
      'asyncTeardown': ?asyncTeardown == null ? null : asyncTeardown!.toMap(),
      'capabilities': ?capabilities == null ? null : capabilities!.toMap(),
      'ccfAssist': ?ccfAssist == null ? null : ccfAssist!.toMap(),
      'cfpc': ?cfpc == null ? null : cfpc!.toMap(),
      'gic': ?gic == null ? null : gic!.toMap(),
      'hap': ?hap == null ? null : hap!.toMap(),
      'hpt': ?hpt == null ? null : hpt!.toMap(),
      'htm': ?htm == null ? null : htm!.toMap(),
      'hyperV': ?hyperV == null ? null : hyperV!.toMap(),
      'ibs': ?ibs == null ? null : ibs!.toMap(),
      'ioapic': ?ioapic == null ? null : ioapic!.toMap(),
      'kvm': ?kvm == null ? null : kvm!.toMap(),
      'msrs': ?msrs == null ? null : msrs!.toMap(),
      'nestedHv': ?nestedHv == null ? null : nestedHv!.toMap(),
      'pae': ?pae,
      'pmu': ?pmu == null ? null : pmu!.toMap(),
      'privNet': ?privNet,
      'ps2': ?ps2 == null ? null : ps2!.toMap(),
      'pvSpinlock': ?pvSpinlock == null ? null : pvSpinlock!.toMap(),
      'ras': ?ras == null ? null : ras!.toMap(),
      'sbbc': ?sbbc == null ? null : sbbc!.toMap(),
      'smm': ?smm == null ? null : smm!.toMap(),
      'tcg': ?tcg == null ? null : tcg!.toMap(),
      'viridian': ?viridian,
      'vmCoreInfo': ?vmCoreInfo == null ? null : vmCoreInfo!.toMap(),
      'vmPort': ?vmPort == null ? null : vmPort!.toMap(),
      'xen': ?xen == null ? null : xen!.toMap(),
    };
  }

  factory DomainFeatures.fromMap(Map<String, dynamic> map) {
    return DomainFeatures(
      acpi: map['acpi'] == null ? null : map['acpi'] as bool,
      aia: map['aia'] == null ? null : DomainFeaturesAia.fromMap((map['aia'] as Map).cast<String, dynamic>()),
      apic: map['apic'] == null ? null : DomainFeaturesApic.fromMap((map['apic'] as Map).cast<String, dynamic>()),
      asyncTeardown: map['asyncTeardown'] == null ? null : DomainFeaturesAsyncTeardown.fromMap((map['asyncTeardown'] as Map).cast<String, dynamic>()),
      capabilities: map['capabilities'] == null ? null : DomainFeaturesCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>()),
      ccfAssist: map['ccfAssist'] == null ? null : DomainFeaturesCcfAssist.fromMap((map['ccfAssist'] as Map).cast<String, dynamic>()),
      cfpc: map['cfpc'] == null ? null : DomainFeaturesCfpc.fromMap((map['cfpc'] as Map).cast<String, dynamic>()),
      gic: map['gic'] == null ? null : DomainFeaturesGic.fromMap((map['gic'] as Map).cast<String, dynamic>()),
      hap: map['hap'] == null ? null : DomainFeaturesHap.fromMap((map['hap'] as Map).cast<String, dynamic>()),
      hpt: map['hpt'] == null ? null : DomainFeaturesHpt.fromMap((map['hpt'] as Map).cast<String, dynamic>()),
      htm: map['htm'] == null ? null : DomainFeaturesHtm.fromMap((map['htm'] as Map).cast<String, dynamic>()),
      hyperV: map['hyperV'] == null ? null : DomainFeaturesHyperV.fromMap((map['hyperV'] as Map).cast<String, dynamic>()),
      ibs: map['ibs'] == null ? null : DomainFeaturesIbs.fromMap((map['ibs'] as Map).cast<String, dynamic>()),
      ioapic: map['ioapic'] == null ? null : DomainFeaturesIoapic.fromMap((map['ioapic'] as Map).cast<String, dynamic>()),
      kvm: map['kvm'] == null ? null : DomainFeaturesKvm.fromMap((map['kvm'] as Map).cast<String, dynamic>()),
      msrs: map['msrs'] == null ? null : DomainFeaturesMsrs.fromMap((map['msrs'] as Map).cast<String, dynamic>()),
      nestedHv: map['nestedHv'] == null ? null : DomainFeaturesNestedHv.fromMap((map['nestedHv'] as Map).cast<String, dynamic>()),
      pae: map['pae'] == null ? null : map['pae'] as bool,
      pmu: map['pmu'] == null ? null : DomainFeaturesPmu.fromMap((map['pmu'] as Map).cast<String, dynamic>()),
      privNet: map['privNet'] == null ? null : map['privNet'] as bool,
      ps2: map['ps2'] == null ? null : DomainFeaturesPs2.fromMap((map['ps2'] as Map).cast<String, dynamic>()),
      pvSpinlock: map['pvSpinlock'] == null ? null : DomainFeaturesPvSpinlock.fromMap((map['pvSpinlock'] as Map).cast<String, dynamic>()),
      ras: map['ras'] == null ? null : DomainFeaturesRas.fromMap((map['ras'] as Map).cast<String, dynamic>()),
      sbbc: map['sbbc'] == null ? null : DomainFeaturesSbbc.fromMap((map['sbbc'] as Map).cast<String, dynamic>()),
      smm: map['smm'] == null ? null : DomainFeaturesSmm.fromMap((map['smm'] as Map).cast<String, dynamic>()),
      tcg: map['tcg'] == null ? null : DomainFeaturesTcg.fromMap((map['tcg'] as Map).cast<String, dynamic>()),
      viridian: map['viridian'] == null ? null : map['viridian'] as bool,
      vmCoreInfo: map['vmCoreInfo'] == null ? null : DomainFeaturesVmCoreInfo.fromMap((map['vmCoreInfo'] as Map).cast<String, dynamic>()),
      vmPort: map['vmPort'] == null ? null : DomainFeaturesVmPort.fromMap((map['vmPort'] as Map).cast<String, dynamic>()),
      xen: map['xen'] == null ? null : DomainFeaturesXen.fromMap((map['xen'] as Map).cast<String, dynamic>()),
    );
  }
}

