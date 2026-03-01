// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_attachments_attachment.dart';

/// Result data returned by getInstanceAttachments.
class GetInstanceAttachmentsResult {
  /// A list of instance attachments. Each element contains the following attributes:
  final List<GetInstanceAttachmentsAttachment> attachments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The instance name.
  final String instanceName;
  final String? nameRegex;
  /// A list of vpc names.
  final List<String> names;
  final String? outputFile;
  /// A list of vpc ids.
  final List<String> vpcIds;

  /// Creates a new [GetInstanceAttachmentsResult].
  /// [attachments] A list of instance attachments. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceName] The instance name.
  /// [nameRegex] Optional.
  /// [names] A list of vpc names.
  /// [outputFile] Optional.
  /// [vpcIds] A list of vpc ids.
  GetInstanceAttachmentsResult({
    required this.attachments,
    required this.id,
    required this.instanceName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.encodeList<GetInstanceAttachmentsAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'id': id,
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'vpcIds': vpcIds,
    };
  }

  factory GetInstanceAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentsResult(
      attachments: pulumi.Input.decodeList<GetInstanceAttachmentsAttachment>(map['attachments'], (value) => GetInstanceAttachmentsAttachment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceName: map['instanceName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      vpcIds: (map['vpcIds'] as List).cast<String>(),
    );
  }
}

