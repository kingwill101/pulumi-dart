// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_sys_info_smbios_base_board_entry.dart';

class DomainSysInfoSmbiosBaseBoard {
  /// Defines individual entries for the base board information.
  final List<DomainSysInfoSmbiosBaseBoardEntry>? entries;

  /// Creates a new [DomainSysInfoSmbiosBaseBoard].
  /// [entries] Defines individual entries for the base board information.
  DomainSysInfoSmbiosBaseBoard({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?entries == null ? null : pulumi.Input.encodeList<DomainSysInfoSmbiosBaseBoardEntry, Map<String, dynamic>>(entries!, (value) => value.toMap()),
    };
  }

  factory DomainSysInfoSmbiosBaseBoard.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosBaseBoard(
      entries: map['entries'] == null ? null : pulumi.Input.decodeList<DomainSysInfoSmbiosBaseBoardEntry>(map['entries'], (value) => DomainSysInfoSmbiosBaseBoardEntry.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

