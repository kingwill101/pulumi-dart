// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConfig.
class GetConfigApigatewayV1betaArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> configId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetConfigApigatewayV1betaArgs({
    required this.apiId,
    required this.configId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['configId'] = configId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetConfigApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigApigatewayV1betaArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      configId: pulumi.Input.asInput<String>(map['configId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
