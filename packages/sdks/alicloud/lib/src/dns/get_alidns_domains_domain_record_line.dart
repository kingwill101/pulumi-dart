// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlidnsDomainsDomainRecordLine {
  /// The code of the parent line, or empty if there is none.
  final pulumi.Input<String> fatherCode;
  /// Sub-line Code.
  final pulumi.Input<String> lineCode;
  /// Parent line display name.
  final pulumi.Input<String> lineDisplayName;
  /// Sub-line display name.
  final pulumi.Input<String> lineName;

  /// Creates a new [GetAlidnsDomainsDomainRecordLine].
  /// [fatherCode] The code of the parent line, or empty if there is none.
  /// [lineCode] Sub-line Code.
  /// [lineDisplayName] Parent line display name.
  /// [lineName] Sub-line display name.
  GetAlidnsDomainsDomainRecordLine({
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

  factory GetAlidnsDomainsDomainRecordLine.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainsDomainRecordLine(
      fatherCode: pulumi.Input.fromValue(map['fatherCode'] as String),
      lineCode: pulumi.Input.fromValue(map['lineCode'] as String),
      lineDisplayName: pulumi.Input.fromValue(map['lineDisplayName'] as String),
      lineName: pulumi.Input.fromValue(map['lineName'] as String),
    );
  }
}

