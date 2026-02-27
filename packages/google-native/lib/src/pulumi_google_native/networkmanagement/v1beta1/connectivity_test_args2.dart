// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'endpoint2.dart';

/// The set of arguments for ConnectivityTest.
class ConnectivityTestArgs2 {
  /// The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  final Input<String>? description;

  /// Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  final Input<Endpoint2> destination;

  /// Resource labels to represent user-provided metadata.
  final Input<Map<String, String>>? labels;

  /// Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test}`
  final Input<String> name;
  final Input<String>? project;

  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  final Input<String>? protocol;

  /// Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  final Input<List<String>>? relatedProjects;

  /// Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  final Input<Endpoint2> source;

  /// Required. The logical name of the Connectivity Test in your project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project
  final Input<String> testId;

  ConnectivityTestArgs2({
    this.description,
    required this.destination,
    this.labels,
    required this.name,
    this.project,
    this.protocol,
    this.relatedProjects,
    required this.source,
    required this.testId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destination'] = Input.mapInputValue<Endpoint2, Map<String, dynamic>>(
        destination, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final relatedProjectsValue = relatedProjects;
    if (relatedProjectsValue != null) {
      map['relatedProjects'] = relatedProjectsValue;
    }
    map['source'] = Input.mapInputValue<Endpoint2, Map<String, dynamic>>(
        source, (value) => value.toMap());
    map['testId'] = testId;
    return map;
  }

  factory ConnectivityTestArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      destination: Input.asInput<Endpoint2>(map['destination']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      relatedProjects:
          Input.asOptionalInput<List<String>>(map['relatedProjects']),
      source: Input.asInput<Endpoint2>(map['source']),
      testId: Input.asInput<String>(map['testId']),
    );
  }
}
