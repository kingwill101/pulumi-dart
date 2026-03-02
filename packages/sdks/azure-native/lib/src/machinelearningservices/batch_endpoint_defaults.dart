// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batch endpoint default values
class BatchEndpointDefaults {
  /// Name of the deployment that will be default for the endpoint.
  /// This deployment will end up getting 100% traffic when the endpoint scoring URL is invoked.
  final pulumi.Input<String>? deploymentName;

  /// Creates a new [BatchEndpointDefaults].
  /// [deploymentName] Name of the deployment that will be default for the endpoint.
  BatchEndpointDefaults({
    this.deploymentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': ?deploymentName,
    };
  }

  factory BatchEndpointDefaults.fromMap(Map<String, dynamic> map) {
    return BatchEndpointDefaults(
      deploymentName: map['deploymentName'] == null ? null : (map['deploymentName']! as String).input(),
    );
  }
}

