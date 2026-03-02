// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_tag_response.dart';

/// The network properties.
class NetworkPropertiesResponse {
  /// A value to describe how the outbound dependencies of a HDInsight cluster are managed. 'Managed' means that the outbound dependencies are managed by the HDInsight service. 'External' means that the outbound dependencies are managed by a customer specific solution.
  final pulumi.Input<String>? outboundDependenciesManagedType;
  /// Indicates whether or not private link is enabled.
  final pulumi.Input<String>? privateLink;
  /// Gets or sets the IP tag for the public IPs created along with the HDInsight Clusters.
  final pulumi.Input<IpTagResponse>? publicIpTag;
  /// The direction for the resource provider connection.
  final pulumi.Input<String>? resourceProviderConnection;

  /// Creates a new [NetworkPropertiesResponse].
  /// [outboundDependenciesManagedType] A value to describe how the outbound dependencies of a HDInsight cluster are managed. 'Managed' means that the outbound dependencies are managed by the HDInsight service. 'External' means that the outbound dependencies are managed by a customer specific solution.
  /// [privateLink] Indicates whether or not private link is enabled.
  /// [publicIpTag] Gets or sets the IP tag for the public IPs created along with the HDInsight Clusters.
  /// [resourceProviderConnection] The direction for the resource provider connection.
  NetworkPropertiesResponse({
    this.outboundDependenciesManagedType,
    this.privateLink,
    this.publicIpTag,
    this.resourceProviderConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundDependenciesManagedType': ?outboundDependenciesManagedType,
      'privateLink': ?privateLink,
      'publicIpTag': ?pulumi.Input.mapOptionalInputValue<IpTagResponse, Map<String, dynamic>>(publicIpTag, (value) => value.toMap()),
      'resourceProviderConnection': ?resourceProviderConnection,
    };
  }

  factory NetworkPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPropertiesResponse(
      outboundDependenciesManagedType: map['outboundDependenciesManagedType'] == null ? null : (map['outboundDependenciesManagedType'] as String).input(),
      privateLink: map['privateLink'] == null ? null : (map['privateLink'] as String).input(),
      publicIpTag: map['publicIpTag'] == null ? null : (IpTagResponse.fromMap((map['publicIpTag'] as Map).cast<String, dynamic>())).input(),
      resourceProviderConnection: map['resourceProviderConnection'] == null ? null : (map['resourceProviderConnection'] as String).input(),
    );
  }
}

