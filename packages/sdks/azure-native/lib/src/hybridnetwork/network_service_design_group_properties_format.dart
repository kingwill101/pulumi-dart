// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// network service design group properties.
class NetworkServiceDesignGroupPropertiesFormat {
  /// The network service design group description.
  final pulumi.Input<String?>? description;

  /// Creates a new [NetworkServiceDesignGroupPropertiesFormat].
  /// [description] The network service design group description.
  const NetworkServiceDesignGroupPropertiesFormat({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory NetworkServiceDesignGroupPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignGroupPropertiesFormat(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
