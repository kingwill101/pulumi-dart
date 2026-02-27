// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Project.
class ProjectArgs2 {
  /// Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily.
  final Input<bool>? autoCreateNetwork;

  /// The alphanumeric ID of the billing account this project
  /// belongs to. The user or service account performing this operation with the provider
  /// must have at mininum Billing Account User privileges (`roles/billing.user`) on the billing account.
  /// See [Google Cloud Billing API Access Control](https://cloud.google.com/billing/docs/how-to/billing-access)
  /// for more details.
  final Input<String>? billingAccount;
  final Input<String>? deletionPolicy;

  /// The numeric ID of the folder this project should be
  /// created under. Only one of `org_id` or `folder_id` may be
  /// specified. If the `folder_id` is specified, then the project is
  /// created under the specified folder. Changing this forces the
  /// project to be migrated to the newly specified folder.
  final Input<String>? folderId;

  /// A set of key/value label pairs to assign to the project.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The display name of the project.
  final Input<String>? name;

  /// The numeric ID of the organization this project belongs to.
  /// Changing this forces a new project to be created.  Only one of
  /// `org_id` or `folder_id` may be specified. If the `org_id` is
  /// specified then the project is created at the top level. Changing
  /// this forces the project to be migrated to the newly specified
  /// organization.
  final Input<String>? orgId;

  /// The project ID. Changing this forces a new project to be created.
  final Input<String>? projectId;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  final Input<Map<String, String>>? tags;

  ProjectArgs2({
    this.autoCreateNetwork,
    this.billingAccount,
    this.deletionPolicy,
    this.folderId,
    this.labels,
    this.name,
    this.orgId,
    this.projectId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCreateNetworkValue = autoCreateNetwork;
    if (autoCreateNetworkValue != null) {
      map['autoCreateNetwork'] = autoCreateNetworkValue;
    }
    final billingAccountValue = billingAccount;
    if (billingAccountValue != null) {
      map['billingAccount'] = billingAccountValue;
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final folderIdValue = folderId;
    if (folderIdValue != null) {
      map['folderId'] = folderIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final orgIdValue = orgId;
    if (orgIdValue != null) {
      map['orgId'] = orgIdValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProjectArgs2.fromMap(Map<String, dynamic> map) {
    return ProjectArgs2(
      autoCreateNetwork: Input.asOptionalInput<bool>(map['autoCreateNetwork']),
      billingAccount: Input.asOptionalInput<String>(map['billingAccount']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      folderId: Input.asOptionalInput<String>(map['folderId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      orgId: Input.asOptionalInput<String>(map['orgId']),
      projectId: Input.asOptionalInput<String>(map['projectId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
