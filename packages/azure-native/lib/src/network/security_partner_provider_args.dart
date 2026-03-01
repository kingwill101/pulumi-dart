// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_security_partner_provider_args_doc}
/// The set of arguments for SecurityPartnerProvider.
/// {@endtemplate}
/// {@macro pulumi_network_security_partner_provider_args_doc}
class SecurityPartnerProviderArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Security Partner Provider.
  final pulumi.Input<String>? securityPartnerProviderName;
  /// The security provider name.
  final pulumi.Input<String>? securityProviderName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The virtualHub to which the Security Partner Provider belongs.
  final pulumi.Input<SubResource>? virtualHub;

  /// Creates a new [SecurityPartnerProviderArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [securityPartnerProviderName] The name of the Security Partner Provider.
  /// [securityProviderName] The security provider name.
  /// [tags] Resource tags.
  /// [virtualHub] The virtualHub to which the Security Partner Provider belongs.
  SecurityPartnerProviderArgs({
    String? id,
    String? location,
    required String resourceGroupName,
    String? securityPartnerProviderName,
    String? securityProviderName,
    Map<String, String>? tags,
    SubResource? virtualHub,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityPartnerProviderName = pulumi.Input.asOptionalInput<String>(securityPartnerProviderName),
      securityProviderName = pulumi.Input.asOptionalInput<String>(securityProviderName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHub = pulumi.Input.asOptionalInput<SubResource>(virtualHub);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'securityPartnerProviderName': ?securityPartnerProviderName,
      'securityProviderName': ?securityProviderName,
      'tags': ?tags,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
    };
  }

  factory SecurityPartnerProviderArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPartnerProviderArgs(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityPartnerProviderName: map['securityPartnerProviderName'] == null ? null : map['securityPartnerProviderName'] as String,
      securityProviderName: map['securityProviderName'] == null ? null : map['securityProviderName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualHub: map['virtualHub'] == null ? null : SubResource.fromMap((map['virtualHub'] as Map).cast<String, dynamic>()),
    );
  }
}

