// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_acls_get_acls_args_doc}
/// Arguments for getAcls.
/// {@endtemplate}
/// {@macro pulumi_alb_get_acls_get_acls_args_doc}
class GetAclsArgs {
  /// The acl ids.
  final pulumi.Input<List<String>>? aclIds;
  /// The ACL Name.
  final pulumi.Input<String>? aclName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Acl IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Acl name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Resource Group to Which the Number.
  final pulumi.Input<String>? resourceGroupId;
  /// The state of the ACL. Valid values:`Provisioning`,`Available`and`Configuring`.  `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAclsArgs].
  /// [aclIds] The acl ids.
  /// [aclName] The ACL Name.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Acl IDs.
  /// [nameRegex] A regex string to filter results by Acl name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] Resource Group to Which the Number.
  /// [status] The state of the ACL. Valid values:`Provisioning`,`Available`and`Configuring`.  `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  GetAclsArgs({
    pulumi.Output<List<String>>? aclIds,
    pulumi.Output<String>? aclName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
  }) :
      aclIds = pulumi.Input.asOptionalInput<List<String>>(aclIds),
      aclName = pulumi.Input.asOptionalInput<String>(aclName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclIds': ?aclIds,
      'aclName': ?aclName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetAclsArgs(
      aclIds: map['aclIds'] == null ? null : pulumi.Output.create<List<String>>((map['aclIds'] as List).cast<String>()),
      aclName: map['aclName'] == null ? null : pulumi.Output.create<String>(map['aclName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

