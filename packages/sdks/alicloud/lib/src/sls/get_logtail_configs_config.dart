// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogtailConfigsConfig {
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> logtailConfigName;

  /// Creates a new [GetLogtailConfigsConfig].
  /// [id] The ID of the resource supplied above.
  /// [logtailConfigName] The name of the resource
  GetLogtailConfigsConfig({
    required this.id,
    required this.logtailConfigName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'logtailConfigName': logtailConfigName,
    };
  }

  factory GetLogtailConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetLogtailConfigsConfig(
      id: (map['id'] as String).input(),
      logtailConfigName: (map['logtailConfigName'] as String).input(),
    );
  }
}

