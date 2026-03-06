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
  const GetLogtailConfigsConfig({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      logtailConfigName: pulumi.Input.fromValue(map['logtailConfigName'] as String),
    );
  }
}

