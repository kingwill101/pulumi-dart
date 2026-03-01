// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_database_grant.dart';
import 'get_user_domain_grant.dart';
import 'get_user_firewall_grant.dart';
import 'get_user_global_grant.dart';
import 'get_user_image_grant.dart';
import 'get_user_linode_grant.dart';
import 'get_user_longview_grant.dart';
import 'get_user_nodebalancer_grant.dart';
import 'get_user_stackscript_grant.dart';
import 'get_user_volume_grant.dart';
import 'get_user_vpc_grant.dart';

/// Result data returned by getUser.
class GetUserResult {
  final List<GetUserDatabaseGrant> databaseGrants;
  final List<GetUserDomainGrant> domainGrants;
  /// The email address for this User, for account management communications, and may be used for other communications as configured.
  final String email;
  final List<GetUserFirewallGrant> firewallGrants;
  final List<GetUserGlobalGrant> globalGrants;
  /// The ID of entity this grant applies to.
  final String id;
  final List<GetUserImageGrant> imageGrants;
  final List<GetUserLinodeGrant> linodeGrants;
  final List<GetUserLongviewGrant> longviewGrants;
  final List<GetUserNodebalancerGrant> nodebalancerGrants;
  /// The date and time when this User’s current password was created. User passwords are first created during the Account sign-up process, and updated using the Reset Password webpage. null if this User has not created a password yet.
  final String passwordCreated;
  /// If true, this User must be granted access to perform actions or access entities on this Account.
  final bool restricted;
  /// A list of SSH Key labels added by this User. These are the keys that will be deployed if this User is included in the authorized_users field of a create Linode, rebuild Linode, or create Disk request.
  final List<String> sshKeys;
  final List<GetUserStackscriptGrant> stackscriptGrants;
  /// A boolean value indicating if the User has Two Factor Authentication (TFA) enabled.
  final bool tfaEnabled;
  /// The type of this user.
  final String userType;
  final String username;
  /// The phone number verified for this User Profile with the Phone Number Verify command. null if this User Profile has no verified phone number.
  final String verifiedPhoneNumber;
  final List<GetUserVolumeGrant> volumeGrants;
  final List<GetUserVpcGrant> vpcGrants;

  /// Creates a new [GetUserResult].
  /// [databaseGrants] Required.
  /// [domainGrants] Required.
  /// [email] The email address for this User, for account management communications, and may be used for other communications as configured.
  /// [firewallGrants] Required.
  /// [globalGrants] Required.
  /// [id] The ID of entity this grant applies to.
  /// [imageGrants] Required.
  /// [linodeGrants] Required.
  /// [longviewGrants] Required.
  /// [nodebalancerGrants] Required.
  /// [passwordCreated] The date and time when this User’s current password was created. User passwords are first created during the Account sign-up process, and updated using the Reset Password webpage. null if this User has not created a password yet.
  /// [restricted] If true, this User must be granted access to perform actions or access entities on this Account.
  /// [sshKeys] A list of SSH Key labels added by this User. These are the keys that will be deployed if this User is included in the authorized_users field of a create Linode, rebuild Linode, or create Disk request.
  /// [stackscriptGrants] Required.
  /// [tfaEnabled] A boolean value indicating if the User has Two Factor Authentication (TFA) enabled.
  /// [userType] The type of this user.
  /// [username] Required.
  /// [verifiedPhoneNumber] The phone number verified for this User Profile with the Phone Number Verify command. null if this User Profile has no verified phone number.
  /// [volumeGrants] Required.
  /// [vpcGrants] Required.
  GetUserResult({
    required this.databaseGrants,
    required this.domainGrants,
    required this.email,
    required this.firewallGrants,
    required this.globalGrants,
    required this.id,
    required this.imageGrants,
    required this.linodeGrants,
    required this.longviewGrants,
    required this.nodebalancerGrants,
    required this.passwordCreated,
    required this.restricted,
    required this.sshKeys,
    required this.stackscriptGrants,
    required this.tfaEnabled,
    required this.userType,
    required this.username,
    required this.verifiedPhoneNumber,
    required this.volumeGrants,
    required this.vpcGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseGrants': pulumi.Input.encodeList<GetUserDatabaseGrant, Map<String, dynamic>>(databaseGrants, (value) => value.toMap()),
      'domainGrants': pulumi.Input.encodeList<GetUserDomainGrant, Map<String, dynamic>>(domainGrants, (value) => value.toMap()),
      'email': email,
      'firewallGrants': pulumi.Input.encodeList<GetUserFirewallGrant, Map<String, dynamic>>(firewallGrants, (value) => value.toMap()),
      'globalGrants': pulumi.Input.encodeList<GetUserGlobalGrant, Map<String, dynamic>>(globalGrants, (value) => value.toMap()),
      'id': id,
      'imageGrants': pulumi.Input.encodeList<GetUserImageGrant, Map<String, dynamic>>(imageGrants, (value) => value.toMap()),
      'linodeGrants': pulumi.Input.encodeList<GetUserLinodeGrant, Map<String, dynamic>>(linodeGrants, (value) => value.toMap()),
      'longviewGrants': pulumi.Input.encodeList<GetUserLongviewGrant, Map<String, dynamic>>(longviewGrants, (value) => value.toMap()),
      'nodebalancerGrants': pulumi.Input.encodeList<GetUserNodebalancerGrant, Map<String, dynamic>>(nodebalancerGrants, (value) => value.toMap()),
      'passwordCreated': passwordCreated,
      'restricted': restricted,
      'sshKeys': sshKeys,
      'stackscriptGrants': pulumi.Input.encodeList<GetUserStackscriptGrant, Map<String, dynamic>>(stackscriptGrants, (value) => value.toMap()),
      'tfaEnabled': tfaEnabled,
      'userType': userType,
      'username': username,
      'verifiedPhoneNumber': verifiedPhoneNumber,
      'volumeGrants': pulumi.Input.encodeList<GetUserVolumeGrant, Map<String, dynamic>>(volumeGrants, (value) => value.toMap()),
      'vpcGrants': pulumi.Input.encodeList<GetUserVpcGrant, Map<String, dynamic>>(vpcGrants, (value) => value.toMap()),
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      databaseGrants: pulumi.Input.decodeList<GetUserDatabaseGrant>(map['databaseGrants'], (value) => GetUserDatabaseGrant.fromMap((value as Map).cast<String, dynamic>())),
      domainGrants: pulumi.Input.decodeList<GetUserDomainGrant>(map['domainGrants'], (value) => GetUserDomainGrant.fromMap((value as Map).cast<String, dynamic>())),
      email: map['email'] as String,
      firewallGrants: pulumi.Input.decodeList<GetUserFirewallGrant>(map['firewallGrants'], (value) => GetUserFirewallGrant.fromMap((value as Map).cast<String, dynamic>())),
      globalGrants: pulumi.Input.decodeList<GetUserGlobalGrant>(map['globalGrants'], (value) => GetUserGlobalGrant.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageGrants: pulumi.Input.decodeList<GetUserImageGrant>(map['imageGrants'], (value) => GetUserImageGrant.fromMap((value as Map).cast<String, dynamic>())),
      linodeGrants: pulumi.Input.decodeList<GetUserLinodeGrant>(map['linodeGrants'], (value) => GetUserLinodeGrant.fromMap((value as Map).cast<String, dynamic>())),
      longviewGrants: pulumi.Input.decodeList<GetUserLongviewGrant>(map['longviewGrants'], (value) => GetUserLongviewGrant.fromMap((value as Map).cast<String, dynamic>())),
      nodebalancerGrants: pulumi.Input.decodeList<GetUserNodebalancerGrant>(map['nodebalancerGrants'], (value) => GetUserNodebalancerGrant.fromMap((value as Map).cast<String, dynamic>())),
      passwordCreated: map['passwordCreated'] as String,
      restricted: map['restricted'] as bool,
      sshKeys: (map['sshKeys'] as List).cast<String>(),
      stackscriptGrants: pulumi.Input.decodeList<GetUserStackscriptGrant>(map['stackscriptGrants'], (value) => GetUserStackscriptGrant.fromMap((value as Map).cast<String, dynamic>())),
      tfaEnabled: map['tfaEnabled'] as bool,
      userType: map['userType'] as String,
      username: map['username'] as String,
      verifiedPhoneNumber: map['verifiedPhoneNumber'] as String,
      volumeGrants: pulumi.Input.decodeList<GetUserVolumeGrant>(map['volumeGrants'], (value) => GetUserVolumeGrant.fromMap((value as Map).cast<String, dynamic>())),
      vpcGrants: pulumi.Input.decodeList<GetUserVpcGrant>(map['vpcGrants'], (value) => GetUserVpcGrant.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

