// ignore_for_file: unused_element, unnecessary_cast

import 'extension_instance_view_response.dart';

/// Status of Arc Extension for a particular node in HCI Cluster.
class PerNodeExtensionStateResponse {
  /// Fully qualified resource ID for the particular Arc Extension on this node.
  final String extension;
  /// The extension instance view.
  final ExtensionInstanceViewResponse instanceView;
  /// Name of the node in HCI Cluster.
  final String name;
  /// State of Arc Extension in this node.
  final String state;
  /// Specifies the version of the script handler.
  final String typeHandlerVersion;

  /// Creates a new [PerNodeExtensionStateResponse].
  /// [extension] Fully qualified resource ID for the particular Arc Extension on this node.
  /// [instanceView] The extension instance view.
  /// [name] Name of the node in HCI Cluster.
  /// [state] State of Arc Extension in this node.
  /// [typeHandlerVersion] Specifies the version of the script handler.
  PerNodeExtensionStateResponse({
    required this.extension,
    required this.instanceView,
    required this.name,
    required this.state,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extension': extension,
      'instanceView': instanceView.toMap(),
      'name': name,
      'state': state,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory PerNodeExtensionStateResponse.fromMap(Map<String, dynamic> map) {
    return PerNodeExtensionStateResponse(
      extension: map['extension'] as String,
      instanceView: ExtensionInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

