// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_response_networkmanagement_v1beta1.dart';
import 'probing_details_response_networkmanagement_v1beta1.dart';
import 'reachability_details_response_networkmanagement_v1beta1.dart';

/// Result data returned by getConnectivityTest.
class GetConnectivityTestNetworkmanagementV1beta1Result {
  /// The time the test was created.
  final String createTime;

  /// The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  final String description;

  /// Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  final EndpointResponseNetworkmanagementV1beta1 destination;

  /// The display name of a Connectivity Test.
  final String displayName;

  /// Resource labels to represent user-provided metadata.
  final Map<String, String> labels;

  /// Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test}`
  final String name;

  /// The probing details of this test from the latest run, present for applicable tests only. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  final ProbingDetailsResponseNetworkmanagementV1beta1 probingDetails;

  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  final String protocol;

  /// The reachability details of this test from the latest run. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  final ReachabilityDetailsResponseNetworkmanagementV1beta1 reachabilityDetails;

  /// Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  final List<String> relatedProjects;

  /// Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  final EndpointResponseNetworkmanagementV1beta1 source;

  /// The time the test's configuration was updated.
  final String updateTime;

  /// Creates a new [GetConnectivityTestNetworkmanagementV1beta1Result].
  /// [createTime] The time the test was created.
  /// [description] The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  /// [destination] Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  /// [displayName] The display name of a Connectivity Test.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test}`
  /// [probingDetails] The probing details of this test from the latest run, present for applicable tests only. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  /// [protocol] IP Protocol of the test. When not provided, "TCP" is assumed.
  /// [reachabilityDetails] The reachability details of this test from the latest run. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  /// [relatedProjects] Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  /// [source] Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  /// [updateTime] The time the test's configuration was updated.
  GetConnectivityTestNetworkmanagementV1beta1Result({
    required this.createTime,
    required this.description,
    required this.destination,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.probingDetails,
    required this.protocol,
    required this.reachabilityDetails,
    required this.relatedProjects,
    required this.source,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['destination'] = destination.toMap();
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['name'] = name;
    map['probingDetails'] = probingDetails.toMap();
    map['protocol'] = protocol;
    map['reachabilityDetails'] = reachabilityDetails.toMap();
    map['relatedProjects'] = relatedProjects;
    map['source'] = source.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectivityTestNetworkmanagementV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestNetworkmanagementV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      destination: EndpointResponseNetworkmanagementV1beta1.fromMap(
          (map['destination'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      probingDetails: ProbingDetailsResponseNetworkmanagementV1beta1.fromMap(
          (map['probingDetails'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] as String,
      reachabilityDetails:
          ReachabilityDetailsResponseNetworkmanagementV1beta1.fromMap(
              (map['reachabilityDetails'] as Map).cast<String, dynamic>()),
      relatedProjects: (map['relatedProjects'] as List).cast<String>(),
      source: EndpointResponseNetworkmanagementV1beta1.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
