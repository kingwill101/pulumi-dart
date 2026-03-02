// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainRecordLine {
  final pulumi.Input<String> fatherCode;
  final pulumi.Input<String> lineCode;
  final pulumi.Input<String> lineDisplayName;
  final pulumi.Input<String> lineName;

  /// Creates a new [GetDomainsDomainRecordLine].
  /// [fatherCode] Required.
  /// [lineCode] Required.
  /// [lineDisplayName] Required.
  /// [lineName] Required.
  GetDomainsDomainRecordLine({
    required this.fatherCode,
    required this.lineCode,
    required this.lineDisplayName,
    required this.lineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fatherCode': fatherCode,
      'lineCode': lineCode,
      'lineDisplayName': lineDisplayName,
      'lineName': lineName,
    };
  }

  factory GetDomainsDomainRecordLine.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainRecordLine(
      fatherCode: (map['fatherCode'] as String).input(),
      lineCode: (map['lineCode'] as String).input(),
      lineDisplayName: (map['lineDisplayName'] as String).input(),
      lineName: (map['lineName'] as String).input(),
    );
  }
}

