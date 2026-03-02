// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertGroupConfiguration {
  final pulumi.Input<List<String>>? fields;
  /// Group configuration type, including no_group, labels_auto, custom.
  final pulumi.Input<String> type;

  /// Creates a new [AlertGroupConfiguration].
  /// [fields] Optional.
  /// [type] Group configuration type, including no_group, labels_auto, custom.
  AlertGroupConfiguration({
    this.fields,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
      'type': type,
    };
  }

  factory AlertGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertGroupConfiguration(
      fields: map['fields'] == null ? null : ((map['fields']! as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

