// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SfdcInstance.
class SfdcInstanceArgs {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  final Input<List<String>>? authConfigId;

  /// A description of the sfdc instance.
  final Input<String>? description;

  /// User selected unique name/alias to easily reference an instance.
  final Input<String>? displayName;
  final Input<String>? location;

  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  final Input<String>? name;
  final Input<String> productId;
  final Input<String>? project;

  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  final Input<String>? serviceAuthority;

  /// The SFDC Org Id. This is defined in salesforce.
  final Input<String>? sfdcOrgId;

  SfdcInstanceArgs({
    this.authConfigId,
    this.description,
    this.displayName,
    this.location,
    this.name,
    required this.productId,
    this.project,
    this.serviceAuthority,
    this.sfdcOrgId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authConfigIdValue = authConfigId;
    if (authConfigIdValue != null) {
      map['authConfigId'] = authConfigIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAuthorityValue = serviceAuthority;
    if (serviceAuthorityValue != null) {
      map['serviceAuthority'] = serviceAuthorityValue;
    }
    final sfdcOrgIdValue = sfdcOrgId;
    if (sfdcOrgIdValue != null) {
      map['sfdcOrgId'] = sfdcOrgIdValue;
    }
    return map;
  }

  factory SfdcInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SfdcInstanceArgs(
      authConfigId: Input.asOptionalInput<List<String>>(map['authConfigId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAuthority: Input.asOptionalInput<String>(map['serviceAuthority']),
      sfdcOrgId: Input.asOptionalInput<String>(map['sfdcOrgId']),
    );
  }
}
