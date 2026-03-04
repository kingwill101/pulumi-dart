// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_response.dart';

/// Result data returned by listCatalogDeployments.
class ListCatalogDeploymentsResult {
  /// The link to the next page of items
  final String? nextLink;

  /// The Deployment items on this page
  final List<DeploymentResponse> value;

  /// Creates a new [ListCatalogDeploymentsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Deployment items on this page
  ListCatalogDeploymentsResult({this.nextLink, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value':
          pulumi.Input.encodeList<DeploymentResponse, Map<String, dynamic>>(
            value,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListCatalogDeploymentsResult.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeploymentsResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: pulumi.Input.decodeList<DeploymentResponse>(
        map['value']!,
        (value) =>
            DeploymentResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
