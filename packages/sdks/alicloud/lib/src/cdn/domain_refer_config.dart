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
  const DomainReferConfig({
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
      allowEmpty: (() { final guardedValue = map['allowEmpty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referLists: pulumi.Input.fromValue((map['referLists'] as List).cast<String>()),
      referType: (() { final guardedValue = map['referType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

