// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_cache.dart';
import 'domain_cpu_feature.dart';
import 'domain_cpu_max_phys_addr.dart';
import 'domain_cpu_numa.dart';
import 'domain_cpu_topology.dart';

class DomainCpu {
  /// Sets caching parameters for the domain's CPU, affecting performance characteristics.
  final DomainCpuCache? cache;
  /// Indicates whether to perform additional checks on the CPU model and features.
  final String? check;
  /// Lists deprecated CPU features that should not be used in the domain configuration.
  final String? deprecatedFeatures;
  /// Defines specific CPU features that can be enabled or disabled for the domain.
  final List<DomainCpuFeature>? features;
  /// Configures CPU model matching options to optimize performance and compatibility.
  final String? match;
  /// Specifies the maximum physical address space size accessible to the domain.
  final DomainCpuMaxPhysAddr? maxPhysAddr;
  /// Configures whether the CPU settings can be changed while the domain is running.
  final bool? migratable;
  /// Defines the operational mode for the CPU configuration, affecting virtualization behavior.
  final String? mode;
  /// Specifies the CPU model used by the domain, influencing its performance characteristics.
  final String? model;
  /// Sets the CPU model fallback configurations in case the specified model is unavailable.
  final String? modelFallback;
  /// Determines the vendor ID for the CPU model, affecting compatibility.
  final String? modelVendorId;
  /// Configures NUMA (Non-Uniform Memory Access) settings for balancing memory allocation.
  final DomainCpuNuma? numa;
  /// Configures the CPU topology for the domain, specifying the physical arrangement of CPUs.
  final DomainCpuTopology? topology;
  /// Specifies the vendor name of the CPU model being used for the domain.
  final String? vendor;

  /// Creates a new [DomainCpu].
  /// [cache] Sets caching parameters for the domain's CPU, affecting performance characteristics.
  /// [check] Indicates whether to perform additional checks on the CPU model and features.
  /// [deprecatedFeatures] Lists deprecated CPU features that should not be used in the domain configuration.
  /// [features] Defines specific CPU features that can be enabled or disabled for the domain.
  /// [match] Configures CPU model matching options to optimize performance and compatibility.
  /// [maxPhysAddr] Specifies the maximum physical address space size accessible to the domain.
  /// [migratable] Configures whether the CPU settings can be changed while the domain is running.
  /// [mode] Defines the operational mode for the CPU configuration, affecting virtualization behavior.
  /// [model] Specifies the CPU model used by the domain, influencing its performance characteristics.
  /// [modelFallback] Sets the CPU model fallback configurations in case the specified model is unavailable.
  /// [modelVendorId] Determines the vendor ID for the CPU model, affecting compatibility.
  /// [numa] Configures NUMA (Non-Uniform Memory Access) settings for balancing memory allocation.
  /// [topology] Configures the CPU topology for the domain, specifying the physical arrangement of CPUs.
  /// [vendor] Specifies the vendor name of the CPU model being used for the domain.
  DomainCpu({
    this.cache,
    this.check,
    this.deprecatedFeatures,
    this.features,
    this.match,
    this.maxPhysAddr,
    this.migratable,
    this.mode,
    this.model,
    this.modelFallback,
    this.modelVendorId,
    this.numa,
    this.topology,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache == null ? null : cache!.toMap(),
      'check': ?check,
      'deprecatedFeatures': ?deprecatedFeatures,
      'features': ?features == null ? null : pulumi.Input.encodeList<DomainCpuFeature, Map<String, dynamic>>(features!, (value) => value.toMap()),
      'match': ?match,
      'maxPhysAddr': ?maxPhysAddr == null ? null : maxPhysAddr!.toMap(),
      'migratable': ?migratable,
      'mode': ?mode,
      'model': ?model,
      'modelFallback': ?modelFallback,
      'modelVendorId': ?modelVendorId,
      'numa': ?numa == null ? null : numa!.toMap(),
      'topology': ?topology == null ? null : topology!.toMap(),
      'vendor': ?vendor,
    };
  }

  factory DomainCpu.fromMap(Map<String, dynamic> map) {
    return DomainCpu(
      cache: map['cache'] == null ? null : DomainCpuCache.fromMap((map['cache'] as Map).cast<String, dynamic>()),
      check: map['check'] == null ? null : map['check'] as String,
      deprecatedFeatures: map['deprecatedFeatures'] == null ? null : map['deprecatedFeatures'] as String,
      features: map['features'] == null ? null : pulumi.Input.decodeList<DomainCpuFeature>(map['features'], (value) => DomainCpuFeature.fromMap((value as Map).cast<String, dynamic>())),
      match: map['match'] == null ? null : map['match'] as String,
      maxPhysAddr: map['maxPhysAddr'] == null ? null : DomainCpuMaxPhysAddr.fromMap((map['maxPhysAddr'] as Map).cast<String, dynamic>()),
      migratable: map['migratable'] == null ? null : map['migratable'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      modelFallback: map['modelFallback'] == null ? null : map['modelFallback'] as String,
      modelVendorId: map['modelVendorId'] == null ? null : map['modelVendorId'] as String,
      numa: map['numa'] == null ? null : DomainCpuNuma.fromMap((map['numa'] as Map).cast<String, dynamic>()),
      topology: map['topology'] == null ? null : DomainCpuTopology.fromMap((map['topology'] as Map).cast<String, dynamic>()),
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

