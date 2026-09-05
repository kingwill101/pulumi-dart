// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AwsServiceAccess resources.
class AwsServiceAccessState {
  /// Date and time that the service was enabled, in RFC 3339 format.
  final pulumi.Input<String?>? dateEnabled;
  /// Service principal of the AWS service to enable. For example, `tagpolicies.tag.amazonaws.com`. Changing this value will force a new resource.
  final pulumi.Input<String?>? servicePrincipal;

  /// Creates a new [AwsServiceAccessState].
  /// [dateEnabled] Date and time that the service was enabled, in RFC 3339 format.
  /// [servicePrincipal] Service principal of the AWS service to enable. For example, `tagpolicies.tag.amazonaws.com`. Changing this value will force a new resource.
  const AwsServiceAccessState({
    this.dateEnabled,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateEnabled': ?dateEnabled,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory AwsServiceAccessState.fromMap(Map<String, dynamic> map) {
    return AwsServiceAccessState(
      dateEnabled: (() { final guardedValue = map['dateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
