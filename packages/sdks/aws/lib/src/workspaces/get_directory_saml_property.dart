// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectorySamlProperty {
  final pulumi.Input<String> relayStateParameterName;
  final pulumi.Input<String> status;
  final pulumi.Input<String> userAccessUrl;

  /// Creates a new [GetDirectorySamlProperty].
  /// [relayStateParameterName] Required.
  /// [status] Required.
  /// [userAccessUrl] Required.
  const GetDirectorySamlProperty({
    required this.relayStateParameterName,
    required this.status,
    required this.userAccessUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relayStateParameterName': relayStateParameterName,
      'status': status,
      'userAccessUrl': userAccessUrl,
    };
  }

  factory GetDirectorySamlProperty.fromMap(Map<String, dynamic> map) {
    return GetDirectorySamlProperty(
      relayStateParameterName: pulumi.Input.fromValue(map['relayStateParameterName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      userAccessUrl: pulumi.Input.fromValue(map['userAccessUrl'] as String),
    );
  }
}
