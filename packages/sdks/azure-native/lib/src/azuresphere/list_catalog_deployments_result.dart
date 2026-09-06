// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_response.dart';

/// Result data returned by listCatalogDeployments.
class ListCatalogDeploymentsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The Deployment items on this page
  final List<DeploymentResponse>? value;

  /// Creates a new [ListCatalogDeploymentsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Deployment items on this page
  const ListCatalogDeploymentsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeploymentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListCatalogDeploymentsResult.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeploymentsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentResponse>(guardedValue, (value) => DeploymentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
