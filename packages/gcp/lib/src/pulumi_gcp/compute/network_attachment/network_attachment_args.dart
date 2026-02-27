// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkAttachment.
class NetworkAttachmentArgs {
  /// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
  /// Possible values are: `ACCEPT_AUTOMATIC`, `ACCEPT_MANUAL`, `INVALID`.
  final pulumi.Input<String> connectionPreference;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Projects that are allowed to connect to this network attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? producerAcceptLists;

  /// Projects that are not allowed to connect to this network attachment. The project can be specified using its id or number.
  final pulumi.Input<List<String>>? producerRejectLists;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// URL of the region where the network attachment resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final pulumi.Input<String>? region;

  /// An array of URLs where each entry is the URL of a subnet provided by the service consumer to use for endpoints in the producers that connect to this network attachment.
  final pulumi.Input<List<String>> subnetworks;

  NetworkAttachmentArgs({
    required this.connectionPreference,
    this.description,
    this.name,
    this.producerAcceptLists,
    this.producerRejectLists,
    this.project,
    this.region,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPreference'] = connectionPreference;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetworks'] = subnetworks;
    return map;
  }

  factory NetworkAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAttachmentArgs(
      connectionPreference:
          pulumi.Input.asInput<String>(map['connectionPreference']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      producerAcceptLists: pulumi.Input.asOptionalInput<List<String>>(
          map['producerAcceptLists']),
      producerRejectLists: pulumi.Input.asOptionalInput<List<String>>(
          map['producerRejectLists']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnetworks: pulumi.Input.asInput<List<String>>(map['subnetworks']),
    );
  }
}
