// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainReferConfig {
  final pulumi.Input<String>? allowEmpty;
  final pulumi.Input<List<String>> referLists;
  final pulumi.Input<String>? referType;

  /// Creates a new [DomainReferConfig].
  /// [allowEmpty] Optional.
  /// [referLists] Required.
  /// [referType] Optional.
  DomainReferConfig({
    this.allowEmpty,
    required this.referLists,
    this.referType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowEmpty': ?allowEmpty,
      'referLists': referLists,
      'referType': ?referType,
    };
  }

  factory DomainReferConfig.fromMap(Map<String, dynamic> map) {
    return DomainReferConfig(
      allowEmpty: map['allowEmpty'] == null ? null : (map['allowEmpty']! as String).input(),
      referLists: ((map['referLists'] as List).cast<String>()).input(),
      referType: map['referType'] == null ? null : (map['referType']! as String).input(),
    );
  }
}

