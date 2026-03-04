// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_instance_view_response_status.dart';

/// Describes the Extension Instance View.
class ExtensionInstanceViewResponse {
  /// The extension name.
  final pulumi.Input<String>? name;

  /// Instance view status.
  final pulumi.Input<ExtensionInstanceViewResponseStatus>? status;

  /// Specifies the type of the extension; an example is "MicrosoftMonitoringAgent".
  final pulumi.Input<String>? type;

  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [ExtensionInstanceViewResponse].
  /// [name] The extension name.
  /// [status] Instance view status.
  /// [type] Specifies the type of the extension; an example is "MicrosoftMonitoringAgent".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  ExtensionInstanceViewResponse({
    this.name,
    this.status,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            ExtensionInstanceViewResponseStatus,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory ExtensionInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionInstanceViewResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtensionInstanceViewResponseStatus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      typeHandlerVersion: (() {
        final guardedValue = map['typeHandlerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
