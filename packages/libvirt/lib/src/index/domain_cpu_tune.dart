// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_cache_tune.dart';
import 'domain_cpu_tune_emulator_pin.dart';
import 'domain_cpu_tune_emulator_sched.dart';
import 'domain_cpu_tune_io_thread_pin.dart';
import 'domain_cpu_tune_io_thread_sched.dart';
import 'domain_cpu_tune_memory_tune.dart';
import 'domain_cpu_tune_vcpu_pin.dart';
import 'domain_cpu_tune_vcpu_sched.dart';

class DomainCpuTune {
  /// Specifies tuning parameters for cache optimization associated with the domain's CPU.
  final List<DomainCpuTuneCacheTune>? cacheTunes;
  /// Specifies the time period for scheduling emulator activities, influencing CPU allocation for the emulator's tasks.
  final double? emulatorPeriod;
  /// Enables or disables the pinning of the emulator to specific CPUs, which can enhance performance by reducing context switching.
  final DomainCpuTuneEmulatorPin? emulatorPin;
  /// Defines the allowed CPU time for the emulator, which can help in managing the performance of virtual machines.
  final double? emulatorQuota;
  /// Configures the scheduling algorithm for the emulator, impacting how CPU resources are allocated during execution.
  final DomainCpuTuneEmulatorSched? emulatorSched;
  /// Configures the global scheduling period for all CPUs, influencing the overall allocation of CPU time across the system.
  final double? globalPeriod;
  /// Sets the total CPU time available across all virtual CPUs, which can regulate resource usage for the domain.
  final double? globalQuota;
  /// Defines the scheduling period for IO threads, controlling the timing and frequency of IO operations on virtual devices.
  final double? ioThreadPeriod;
  /// Enables pinning of IO threads to specific CPUs, improving the performance of virtual block devices by reducing overhead.
  final List<DomainCpuTuneIoThreadPin>? ioThreadPins;
  /// Sets the allowed CPU time for IO threads, controlling their resource consumption during operation.
  final double? ioThreadQuota;
  /// Configures the scheduling parameters for IO threads, determining how they interact with CPU resources over time.
  final List<DomainCpuTuneIoThreadSched>? ioThreadScheds;
  /// Enables memory tuning parameters that control how memory resources are allocated and managed for the domain.
  final List<DomainCpuTuneMemoryTune>? memoryTunes;
  /// Defines the scheduling period for the domain's CPUs, determining the frequency of CPU resource allocation.
  final double? period;
  /// Sets the maximum CPU time allocation for the domain, controlling how much CPU resource the domain can utilize.
  final double? quota;
  /// Configures the relative weight of CPU resources assigned to the domain, influencing its priority in CPU scheduling.
  final double? shares;
  /// Enables pinning configurations for virtual CPUs, enhancing performance by binding specific virtual CPUs to physical cores.
  final List<DomainCpuTuneVcpuPin>? vcpuPins;
  /// Configures the scheduling parameters for virtual CPUs, impacting how CPU resources are allocated during execution.
  final List<DomainCpuTuneVcpuSched>? vcpuScheds;

  /// Creates a new [DomainCpuTune].
  /// [cacheTunes] Specifies tuning parameters for cache optimization associated with the domain's CPU.
  /// [emulatorPeriod] Specifies the time period for scheduling emulator activities, influencing CPU allocation for the emulator's tasks.
  /// [emulatorPin] Enables or disables the pinning of the emulator to specific CPUs, which can enhance performance by reducing context switching.
  /// [emulatorQuota] Defines the allowed CPU time for the emulator, which can help in managing the performance of virtual machines.
  /// [emulatorSched] Configures the scheduling algorithm for the emulator, impacting how CPU resources are allocated during execution.
  /// [globalPeriod] Configures the global scheduling period for all CPUs, influencing the overall allocation of CPU time across the system.
  /// [globalQuota] Sets the total CPU time available across all virtual CPUs, which can regulate resource usage for the domain.
  /// [ioThreadPeriod] Defines the scheduling period for IO threads, controlling the timing and frequency of IO operations on virtual devices.
  /// [ioThreadPins] Enables pinning of IO threads to specific CPUs, improving the performance of virtual block devices by reducing overhead.
  /// [ioThreadQuota] Sets the allowed CPU time for IO threads, controlling their resource consumption during operation.
  /// [ioThreadScheds] Configures the scheduling parameters for IO threads, determining how they interact with CPU resources over time.
  /// [memoryTunes] Enables memory tuning parameters that control how memory resources are allocated and managed for the domain.
  /// [period] Defines the scheduling period for the domain's CPUs, determining the frequency of CPU resource allocation.
  /// [quota] Sets the maximum CPU time allocation for the domain, controlling how much CPU resource the domain can utilize.
  /// [shares] Configures the relative weight of CPU resources assigned to the domain, influencing its priority in CPU scheduling.
  /// [vcpuPins] Enables pinning configurations for virtual CPUs, enhancing performance by binding specific virtual CPUs to physical cores.
  /// [vcpuScheds] Configures the scheduling parameters for virtual CPUs, impacting how CPU resources are allocated during execution.
  DomainCpuTune({
    this.cacheTunes,
    this.emulatorPeriod,
    this.emulatorPin,
    this.emulatorQuota,
    this.emulatorSched,
    this.globalPeriod,
    this.globalQuota,
    this.ioThreadPeriod,
    this.ioThreadPins,
    this.ioThreadQuota,
    this.ioThreadScheds,
    this.memoryTunes,
    this.period,
    this.quota,
    this.shares,
    this.vcpuPins,
    this.vcpuScheds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheTunes': ?cacheTunes == null ? null : pulumi.Input.encodeList<DomainCpuTuneCacheTune, Map<String, dynamic>>(cacheTunes!, (value) => value.toMap()),
      'emulatorPeriod': ?emulatorPeriod,
      'emulatorPin': ?emulatorPin == null ? null : emulatorPin!.toMap(),
      'emulatorQuota': ?emulatorQuota,
      'emulatorSched': ?emulatorSched == null ? null : emulatorSched!.toMap(),
      'globalPeriod': ?globalPeriod,
      'globalQuota': ?globalQuota,
      'ioThreadPeriod': ?ioThreadPeriod,
      'ioThreadPins': ?ioThreadPins == null ? null : pulumi.Input.encodeList<DomainCpuTuneIoThreadPin, Map<String, dynamic>>(ioThreadPins!, (value) => value.toMap()),
      'ioThreadQuota': ?ioThreadQuota,
      'ioThreadScheds': ?ioThreadScheds == null ? null : pulumi.Input.encodeList<DomainCpuTuneIoThreadSched, Map<String, dynamic>>(ioThreadScheds!, (value) => value.toMap()),
      'memoryTunes': ?memoryTunes == null ? null : pulumi.Input.encodeList<DomainCpuTuneMemoryTune, Map<String, dynamic>>(memoryTunes!, (value) => value.toMap()),
      'period': ?period,
      'quota': ?quota,
      'shares': ?shares,
      'vcpuPins': ?vcpuPins == null ? null : pulumi.Input.encodeList<DomainCpuTuneVcpuPin, Map<String, dynamic>>(vcpuPins!, (value) => value.toMap()),
      'vcpuScheds': ?vcpuScheds == null ? null : pulumi.Input.encodeList<DomainCpuTuneVcpuSched, Map<String, dynamic>>(vcpuScheds!, (value) => value.toMap()),
    };
  }

  factory DomainCpuTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTune(
      cacheTunes: map['cacheTunes'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneCacheTune>(map['cacheTunes'], (value) => DomainCpuTuneCacheTune.fromMap((value as Map).cast<String, dynamic>())),
      emulatorPeriod: map['emulatorPeriod'] == null ? null : map['emulatorPeriod'] as double,
      emulatorPin: map['emulatorPin'] == null ? null : DomainCpuTuneEmulatorPin.fromMap((map['emulatorPin'] as Map).cast<String, dynamic>()),
      emulatorQuota: map['emulatorQuota'] == null ? null : map['emulatorQuota'] as double,
      emulatorSched: map['emulatorSched'] == null ? null : DomainCpuTuneEmulatorSched.fromMap((map['emulatorSched'] as Map).cast<String, dynamic>()),
      globalPeriod: map['globalPeriod'] == null ? null : map['globalPeriod'] as double,
      globalQuota: map['globalQuota'] == null ? null : map['globalQuota'] as double,
      ioThreadPeriod: map['ioThreadPeriod'] == null ? null : map['ioThreadPeriod'] as double,
      ioThreadPins: map['ioThreadPins'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneIoThreadPin>(map['ioThreadPins'], (value) => DomainCpuTuneIoThreadPin.fromMap((value as Map).cast<String, dynamic>())),
      ioThreadQuota: map['ioThreadQuota'] == null ? null : map['ioThreadQuota'] as double,
      ioThreadScheds: map['ioThreadScheds'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneIoThreadSched>(map['ioThreadScheds'], (value) => DomainCpuTuneIoThreadSched.fromMap((value as Map).cast<String, dynamic>())),
      memoryTunes: map['memoryTunes'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneMemoryTune>(map['memoryTunes'], (value) => DomainCpuTuneMemoryTune.fromMap((value as Map).cast<String, dynamic>())),
      period: map['period'] == null ? null : map['period'] as double,
      quota: map['quota'] == null ? null : map['quota'] as double,
      shares: map['shares'] == null ? null : map['shares'] as double,
      vcpuPins: map['vcpuPins'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneVcpuPin>(map['vcpuPins'], (value) => DomainCpuTuneVcpuPin.fromMap((value as Map).cast<String, dynamic>())),
      vcpuScheds: map['vcpuScheds'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneVcpuSched>(map['vcpuScheds'], (value) => DomainCpuTuneVcpuSched.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

