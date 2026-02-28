// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_attachment_connection_preference_compute_beta.dart';

/// {@template pulumi_compute_beta_network_attachment_compute_beta_args_doc}
/// The set of arguments for NetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_network_attachment_compute_beta_args_doc}
class NetworkAttachmentComputeBetaArgs {
  final pulumi.Input<NetworkAttachmentConnectionPreferenceComputeBeta>?
      connectionPreference;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? producerAcceptLists;

  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? producerRejectLists;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
  final pulumi.Input<String>? requestId;

  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final pulumi.Input<List<String>>? subnetworks;

  /// Creates a new [NetworkAttachmentComputeBetaArgs].
  /// [connectionPreference] Optional.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [producerAcceptLists] Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  /// [producerRejectLists] Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000). end_interface: MixerMutationRequestBuilder
  /// [subnetworks] An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  NetworkAttachmentComputeBetaArgs({
    NetworkAttachmentConnectionPreferenceComputeBeta? connectionPreference,
    String? description,
    String? name,
    List<String>? producerAcceptLists,
    List<String>? producerRejectLists,
    String? project,
    required String region,
    String? requestId,
    List<String>? subnetworks,
  })  : connectionPreference = pulumi.Input.asOptionalInput<
                NetworkAttachmentConnectionPreferenceComputeBeta>(
            connectionPreference),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        producerAcceptLists =
            pulumi.Input.asOptionalInput<List<String>>(producerAcceptLists),
        producerRejectLists =
            pulumi.Input.asOptionalInput<List<String>>(producerRejectLists),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        subnetworks = pulumi.Input.asOptionalInput<List<String>>(subnetworks);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPreferenceValue = connectionPreference;
    if (connectionPreferenceValue != null) {
      map['connectionPreference'] = pulumi.Input.mapOptionalInputValue<
          NetworkAttachmentConnectionPreferenceComputeBeta,
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

  factory NetworkAttachmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentComputeBetaArgs(
      connectionPreference: map['connectionPreference'] == null
          ? null
          : NetworkAttachmentConnectionPreferenceComputeBeta.fromValue(
              map['connectionPreference'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      producerAcceptLists: map['producerAcceptLists'] == null
          ? null
          : (map['producerAcceptLists'] as List).cast<String>(),
      producerRejectLists: map['producerRejectLists'] == null
          ? null
          : (map['producerRejectLists'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      subnetworks: map['subnetworks'] == null
          ? null
          : (map['subnetworks'] as List).cast<String>(),
    );
  }
}
