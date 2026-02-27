// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'network_attachment_connection_preference3.dart';

/// The set of arguments for NetworkAttachment.
class NetworkAttachmentArgs3 {
  final Input<NetworkAttachmentConnectionPreference3>? connectionPreference;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final Input<List<String>>? producerAcceptLists;

  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final Input<List<String>>? producerRejectLists;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
  final Input<String>? requestId;

  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final Input<List<String>>? subnetworks;

  NetworkAttachmentArgs3({
    this.connectionPreference,
    this.description,
    this.name,
    this.producerAcceptLists,
    this.producerRejectLists,
    this.project,
    required this.region,
    this.requestId,
    this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPreferenceValue = connectionPreference;
    if (connectionPreferenceValue != null) {
      map['connectionPreference'] = Input.mapOptionalInputValue<
          NetworkAttachmentConnectionPreference3,
          String>(connectionPreferenceValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final producerAcceptListsValue = producerAcceptLists;
    if (producerAcceptListsValue != null) {
      map['producerAcceptLists'] = producerAcceptListsValue;
    }
    final producerRejectListsValue = producerRejectLists;
    if (producerRejectListsValue != null) {
      map['producerRejectLists'] = producerRejectListsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = subnetworksValue;
    }
    return map;
  }

  factory NetworkAttachmentArgs3.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentArgs3(
      connectionPreference:
          Input.asOptionalInput<NetworkAttachmentConnectionPreference3>(
              map['connectionPreference']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      producerAcceptLists:
          Input.asOptionalInput<List<String>>(map['producerAcceptLists']),
      producerRejectLists:
          Input.asOptionalInput<List<String>>(map['producerRejectLists']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      subnetworks: Input.asOptionalInput<List<String>>(map['subnetworks']),
    );
  }
}
