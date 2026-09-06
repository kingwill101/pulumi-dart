// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineRunSourceProperties {
  /// The name of the source.
  final pulumi.Input<String?>? name;
  /// The type of the source.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [PipelineRunSourceProperties].
  /// [name] The name of the source.
  /// [type] The type of the source.
  PipelineRunSourceProperties({
    this.name,
    pulumi.Input<dynamic>? type,
  }) : type = type ?? pulumi.Input.fromValue('AzureStorageBlob');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PipelineRunSourceProperties.fromMap(Map<String, dynamic> map) {
    return PipelineRunSourceProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
