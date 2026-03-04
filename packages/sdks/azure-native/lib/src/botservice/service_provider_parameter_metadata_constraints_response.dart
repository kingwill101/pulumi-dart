// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// the constraints of the bot meta data.
class ServiceProviderParameterMetadataConstraintsResponse {
  /// Whether required the constraints of the bot meta data.
  final pulumi.Input<bool>? required;

  /// Creates a new [ServiceProviderParameterMetadataConstraintsResponse].
  /// [required] Whether required the constraints of the bot meta data.
  ServiceProviderParameterMetadataConstraintsResponse({this.required});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'required': ?required};
  }

  factory ServiceProviderParameterMetadataConstraintsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceProviderParameterMetadataConstraintsResponse(
      required: (() {
        final guardedValue = map['required'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
