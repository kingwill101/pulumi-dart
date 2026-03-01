// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_base_board.dart';
import 'domain_sys_info_smbios_bios.dart';
import 'domain_sys_info_smbios_chassis.dart';
import 'domain_sys_info_smbios_memory.dart';
import 'domain_sys_info_smbios_oem_strings.dart';
import 'domain_sys_info_smbios_processor.dart';
import 'domain_sys_info_smbios_system.dart';

class DomainSysInfoSmbios {
  /// Sets the base board information for the SMBIOS configuration.
  final List<DomainSysInfoSmbiosBaseBoard>? baseBoards;
  /// Configures the BIOS information for the virtual machine's SMBIOS.
  final DomainSysInfoSmbiosBios? bios;
  /// Configures the chassis information for the SMBIOS configuration.
  final DomainSysInfoSmbiosChassis? chassis;
  /// Configures the memory information for the SMBIOS system.
  final List<DomainSysInfoSmbiosMemory>? memories;
  /// Configures OEM strings within the SMBIOS information.
  final DomainSysInfoSmbiosOemStrings? oemStrings;
  /// Sets processor information in the SMBIOS configuration.
  final List<DomainSysInfoSmbiosProcessor>? processors;
  /// Configures system information for the SMBIOS configuration.
  final DomainSysInfoSmbiosSystem? system;

  /// Creates a new [DomainSysInfoSmbios].
  /// [baseBoards] Sets the base board information for the SMBIOS configuration.
  /// [bios] Configures the BIOS information for the virtual machine's SMBIOS.
  /// [chassis] Configures the chassis information for the SMBIOS configuration.
  /// [memories] Configures the memory information for the SMBIOS system.
  /// [oemStrings] Configures OEM strings within the SMBIOS information.
  /// [processors] Sets processor information in the SMBIOS configuration.
  /// [system] Configures system information for the SMBIOS configuration.
  DomainSysInfoSmbios({
    this.baseBoards,
    this.bios,
    this.chassis,
    this.memories,
    this.oemStrings,
    this.processors,
    this.system,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBoards': ?baseBoards == null ? null : pulumi.Input.encodeList<DomainSysInfoSmbiosBaseBoard, Map<String, dynamic>>(baseBoards!, (value) => value.toMap()),
      'bios': ?bios == null ? null : bios!.toMap(),
      'chassis': ?chassis == null ? null : chassis!.toMap(),
      'memories': ?memories == null ? null : pulumi.Input.encodeList<DomainSysInfoSmbiosMemory, Map<String, dynamic>>(memories!, (value) => value.toMap()),
      'oemStrings': ?oemStrings == null ? null : oemStrings!.toMap(),
      'processors': ?processors == null ? null : pulumi.Input.encodeList<DomainSysInfoSmbiosProcessor, Map<String, dynamic>>(processors!, (value) => value.toMap()),
      'system': ?system == null ? null : system!.toMap(),
    };
  }

  factory DomainSysInfoSmbios.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbios(
      baseBoards: map['baseBoards'] == null ? null : pulumi.Input.decodeList<DomainSysInfoSmbiosBaseBoard>(map['baseBoards'], (value) => DomainSysInfoSmbiosBaseBoard.fromMap((value as Map).cast<String, dynamic>())),
      bios: map['bios'] == null ? null : DomainSysInfoSmbiosBios.fromMap((map['bios'] as Map).cast<String, dynamic>()),
      chassis: map['chassis'] == null ? null : DomainSysInfoSmbiosChassis.fromMap((map['chassis'] as Map).cast<String, dynamic>()),
      memories: map['memories'] == null ? null : pulumi.Input.decodeList<DomainSysInfoSmbiosMemory>(map['memories'], (value) => DomainSysInfoSmbiosMemory.fromMap((value as Map).cast<String, dynamic>())),
      oemStrings: map['oemStrings'] == null ? null : DomainSysInfoSmbiosOemStrings.fromMap((map['oemStrings'] as Map).cast<String, dynamic>()),
      processors: map['processors'] == null ? null : pulumi.Input.decodeList<DomainSysInfoSmbiosProcessor>(map['processors'], (value) => DomainSysInfoSmbiosProcessor.fromMap((value as Map).cast<String, dynamic>())),
      system: map['system'] == null ? null : DomainSysInfoSmbiosSystem.fromMap((map['system'] as Map).cast<String, dynamic>()),
    );
  }
}

