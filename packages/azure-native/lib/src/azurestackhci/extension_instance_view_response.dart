// ignore_for_file: unused_element, unnecessary_cast

import 'extension_instance_view_response_status.dart';

/// Describes the Extension Instance View.
class ExtensionInstanceViewResponse {
  /// The extension name.
  final String? name;
  /// Instance view status.
  final ExtensionInstanceViewResponseStatus? status;
  /// Specifies the type of the extension; an example is "MicrosoftMonitoringAgent".
  final String? type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

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
      'status': ?status == null ? null : status!.toMap(),
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory ExtensionInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionInstanceViewResponse(
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : ExtensionInstanceViewResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

