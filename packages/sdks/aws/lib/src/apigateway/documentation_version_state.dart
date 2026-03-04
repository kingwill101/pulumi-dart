// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DocumentationVersion resources.
class DocumentationVersionState {
  /// Description of the API documentation version.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the associated Rest API
  final pulumi.Input<String>? restApiId;

  /// Version identifier of the API documentation snapshot.
  final pulumi.Input<String>? version;

  /// Creates a new [DocumentationVersionState].
  /// [description] Description of the API documentation version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the associated Rest API
  /// [version] Version identifier of the API documentation snapshot.
  DocumentationVersionState({
    this.description,
    this.region,
    this.restApiId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'region': ?region,
      'restApiId': ?restApiId,
      'version': ?version,
    };
  }

  factory DocumentationVersionState.fromMap(Map<String, dynamic> map) {
    return DocumentationVersionState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restApiId: (() {
        final guardedValue = map['restApiId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
