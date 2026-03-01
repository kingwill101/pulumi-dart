// ignore_for_file: unused_element, unnecessary_cast

import 'ip_tag_response.dart';

/// The network properties.
class NetworkPropertiesResponse {
  /// A value to describe how the outbound dependencies of a HDInsight cluster are managed. 'Managed' means that the outbound dependencies are managed by the HDInsight service. 'External' means that the outbound dependencies are managed by a customer specific solution.
  final String? outboundDependenciesManagedType;
  /// Indicates whether or not private link is enabled.
  final String? privateLink;
  /// Gets or sets the IP tag for the public IPs created along with the HDInsight Clusters.
  final IpTagResponse? publicIpTag;
  /// The direction for the resource provider connection.
  final String? resourceProviderConnection;

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
      'publicIpTag': ?publicIpTag == null ? null : publicIpTag!.toMap(),
      'resourceProviderConnection': ?resourceProviderConnection,
    };
  }

  factory NetworkPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPropertiesResponse(
      outboundDependenciesManagedType: map['outboundDependenciesManagedType'] == null ? null : map['outboundDependenciesManagedType'] as String,
      privateLink: map['privateLink'] == null ? null : map['privateLink'] as String,
      publicIpTag: map['publicIpTag'] == null ? null : IpTagResponse.fromMap((map['publicIpTag'] as Map).cast<String, dynamic>()),
      resourceProviderConnection: map['resourceProviderConnection'] == null ? null : map['resourceProviderConnection'] as String,
    );
  }
}

