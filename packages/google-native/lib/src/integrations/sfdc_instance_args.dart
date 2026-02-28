// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_sfdc_instance_args_doc}
/// The set of arguments for SfdcInstance.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_sfdc_instance_args_doc}
class SfdcInstanceArgs {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  final pulumi.Input<List<String>>? authConfigId;

  /// A description of the sfdc instance.
  final pulumi.Input<String>? description;

  /// User selected unique name/alias to easily reference an instance.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  final pulumi.Input<String>? serviceAuthority;

  /// The SFDC Org Id. This is defined in salesforce.
  final pulumi.Input<String>? sfdcOrgId;

  /// Creates a new [SfdcInstanceArgs].
  /// [authConfigId] A list of AuthConfigs that can be tried to open the channel to SFDC
  /// [description] A description of the sfdc instance.
  /// [displayName] User selected unique name/alias to easily reference an instance.
  /// [location] Optional.
  /// [name] Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  /// [productId] Required.
  /// [project] Optional.
  /// [serviceAuthority] URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  /// [sfdcOrgId] The SFDC Org Id. This is defined in salesforce.
  SfdcInstanceArgs({
    List<String>? authConfigId,
    String? description,
    String? displayName,
    String? location,
    String? name,
    required String productId,
    String? project,
    String? serviceAuthority,
    String? sfdcOrgId,
  })  : authConfigId = pulumi.Input.asOptionalInput<List<String>>(authConfigId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceAuthority =
            pulumi.Input.asOptionalInput<String>(serviceAuthority),
        sfdcOrgId = pulumi.Input.asOptionalInput<String>(sfdcOrgId);

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
      authConfigId: map['authConfigId'] == null
          ? null
          : (map['authConfigId'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceAuthority: map['serviceAuthority'] == null
          ? null
          : map['serviceAuthority'] as String,
      sfdcOrgId: map['sfdcOrgId'] == null ? null : map['sfdcOrgId'] as String,
    );
  }
}
