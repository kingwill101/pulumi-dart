// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the workflow trigger callback URL query parameters.
class WorkflowTriggerListCallbackUrlQueriesResponse {
  /// The api version.
  final pulumi.Input<String>? apiVersion;
  /// The SAS timestamp.
  final pulumi.Input<String>? se;
  /// The SAS signature.
  final pulumi.Input<String>? sig;
  /// The SAS permissions.
  final pulumi.Input<String>? sp;
  /// The SAS version.
  final pulumi.Input<String>? sv;

  /// Creates a new [WorkflowTriggerListCallbackUrlQueriesResponse].
  /// [apiVersion] The api version.
  /// [se] The SAS timestamp.
  /// [sig] The SAS signature.
  /// [sp] The SAS permissions.
  /// [sv] The SAS version.
  const WorkflowTriggerListCallbackUrlQueriesResponse({
    this.apiVersion,
    this.se,
    this.sig,
    this.sp,
    this.sv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'se': ?se,
      'sig': ?sig,
      'sp': ?sp,
      'sv': ?sv,
    };
  }

  factory WorkflowTriggerListCallbackUrlQueriesResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowTriggerListCallbackUrlQueriesResponse(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      se: (() { final guardedValue = map['se']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sig: (() { final guardedValue = map['sig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sp: (() { final guardedValue = map['sp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sv: (() { final guardedValue = map['sv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
