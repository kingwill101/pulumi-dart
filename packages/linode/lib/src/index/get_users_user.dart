// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user_database_grant.dart';
import 'get_users_user_domain_grant.dart';
import 'get_users_user_firewall_grant.dart';
import 'get_users_user_global_grant.dart';
import 'get_users_user_image_grant.dart';
import 'get_users_user_linode_grant.dart';
import 'get_users_user_longview_grant.dart';
import 'get_users_user_nodebalancer_grant.dart';
import 'get_users_user_stackscript_grant.dart';
import 'get_users_user_volume_grant.dart';
import 'get_users_user_vpc_grant.dart';

class GetUsersUser {
  /// A set containing all of the user's active grants.
  final List<GetUsersUserDatabaseGrant> databaseGrants;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserDomainGrant> domainGrants;
  /// The email address for this User, for account management communications, and may be used for other communications as configured.
  final String email;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserFirewallGrant> firewallGrants;
  /// A structure containing the Account-level grants a User has.
  final List<GetUsersUserGlobalGrant> globalGrants;
  /// The ID of entity this grant applies to.
  final String id;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserImageGrant> imageGrants;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserLinodeGrant> linodeGrants;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserLongviewGrant> longviewGrants;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserNodebalancerGrant> nodebalancerGrants;
  /// The date and time when this User’s current password was created. User passwords are first created during the Account sign-up process, and updated using the Reset Password webpage. null if this User has not created a password yet.
  final String passwordCreated;
  /// If true, this User must be granted access to perform actions or access entities on this Account.
  final bool restricted;
  /// A list of SSH Key labels added by this User. These are the keys that will be deployed if this User is included in the authorized_users field of a create Linode, rebuild Linode, or create Disk request.
  final List<String> sshKeys;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserStackscriptGrant> stackscriptGrants;
  /// A boolean value indicating if the User has Two Factor Authentication (TFA) enabled.
  final bool tfaEnabled;
  /// The type of this user.
  final String userType;
  /// This User's username. This is used for logging in, and may also be displayed alongside actions the User performs (for example, in Events or public StackScripts).
  final String username;
  /// The phone number verified for this User Profile with the Phone Number Verify command. null if this User Profile has no verified phone number.
  final String verifiedPhoneNumber;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserVolumeGrant> volumeGrants;
  /// A set containing all of the user's active grants.
  final List<GetUsersUserVpcGrant> vpcGrants;

  /// Creates a new [GetUsersUser].
  /// [databaseGrants] A set containing all of the user's active grants.
  /// [domainGrants] A set containing all of the user's active grants.
  /// [email] The email address for this User, for account management communications, and may be used for other communications as configured.
  /// [firewallGrants] A set containing all of the user's active grants.
  /// [globalGrants] A structure containing the Account-level grants a User has.
  /// [id] The ID of entity this grant applies to.
  /// [imageGrants] A set containing all of the user's active grants.
  /// [linodeGrants] A set containing all of the user's active grants.
  /// [longviewGrants] A set containing all of the user's active grants.
  /// [nodebalancerGrants] A set containing all of the user's active grants.
  /// [passwordCreated] The date and time when this User’s current password was created. User passwords are first created during the Account sign-up process, and updated using the Reset Password webpage. null if this User has not created a password yet.
  /// [restricted] If true, this User must be granted access to perform actions or access entities on this Account.
  /// [sshKeys] A list of SSH Key labels added by this User. These are the keys that will be deployed if this User is included in the authorized_users field of a create Linode, rebuild Linode, or create Disk request.
  /// [stackscriptGrants] A set containing all of the user's active grants.
  /// [tfaEnabled] A boolean value indicating if the User has Two Factor Authentication (TFA) enabled.
  /// [userType] The type of this user.
  /// [username] This User's username. This is used for logging in, and may also be displayed alongside actions the User performs (for example, in Events or public StackScripts).
  /// [verifiedPhoneNumber] The phone number verified for this User Profile with the Phone Number Verify command. null if this User Profile has no verified phone number.
  /// [volumeGrants] A set containing all of the user's active grants.
  /// [vpcGrants] A set containing all of the user's active grants.
  GetUsersUser({
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
      'databaseGrants': pulumi.Input.encodeList<GetUsersUserDatabaseGrant, Map<String, dynamic>>(databaseGrants, (value) => value.toMap()),
      'domainGrants': pulumi.Input.encodeList<GetUsersUserDomainGrant, Map<String, dynamic>>(domainGrants, (value) => value.toMap()),
      'email': email,
      'firewallGrants': pulumi.Input.encodeList<GetUsersUserFirewallGrant, Map<String, dynamic>>(firewallGrants, (value) => value.toMap()),
      'globalGrants': pulumi.Input.encodeList<GetUsersUserGlobalGrant, Map<String, dynamic>>(globalGrants, (value) => value.toMap()),
      'id': id,
      'imageGrants': pulumi.Input.encodeList<GetUsersUserImageGrant, Map<String, dynamic>>(imageGrants, (value) => value.toMap()),
      'linodeGrants': pulumi.Input.encodeList<GetUsersUserLinodeGrant, Map<String, dynamic>>(linodeGrants, (value) => value.toMap()),
      'longviewGrants': pulumi.Input.encodeList<GetUsersUserLongviewGrant, Map<String, dynamic>>(longviewGrants, (value) => value.toMap()),
      'nodebalancerGrants': pulumi.Input.encodeList<GetUsersUserNodebalancerGrant, Map<String, dynamic>>(nodebalancerGrants, (value) => value.toMap()),
      'passwordCreated': passwordCreated,
      'restricted': restricted,
      'sshKeys': sshKeys,
      'stackscriptGrants': pulumi.Input.encodeList<GetUsersUserStackscriptGrant, Map<String, dynamic>>(stackscriptGrants, (value) => value.toMap()),
      'tfaEnabled': tfaEnabled,
      'userType': userType,
      'username': username,
      'verifiedPhoneNumber': verifiedPhoneNumber,
      'volumeGrants': pulumi.Input.encodeList<GetUsersUserVolumeGrant, Map<String, dynamic>>(volumeGrants, (value) => value.toMap()),
      'vpcGrants': pulumi.Input.encodeList<GetUsersUserVpcGrant, Map<String, dynamic>>(vpcGrants, (value) => value.toMap()),
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      databaseGrants: pulumi.Input.decodeList<GetUsersUserDatabaseGrant>(map['databaseGrants'], (value) => GetUsersUserDatabaseGrant.fromMap((value as Map).cast<String, dynamic>())),
      domainGrants: pulumi.Input.decodeList<GetUsersUserDomainGrant>(map['domainGrants'], (value) => GetUsersUserDomainGrant.fromMap((value as Map).cast<String, dynamic>())),
      email: map['email'] as String,
      firewallGrants: pulumi.Input.decodeList<GetUsersUserFirewallGrant>(map['firewallGrants'], (value) => GetUsersUserFirewallGrant.fromMap((value as Map).cast<String, dynamic>())),
      globalGrants: pulumi.Input.decodeList<GetUsersUserGlobalGrant>(map['globalGrants'], (value) => GetUsersUserGlobalGrant.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageGrants: pulumi.Input.decodeList<GetUsersUserImageGrant>(map['imageGrants'], (value) => GetUsersUserImageGrant.fromMap((value as Map).cast<String, dynamic>())),
      linodeGrants: pulumi.Input.decodeList<GetUsersUserLinodeGrant>(map['linodeGrants'], (value) => GetUsersUserLinodeGrant.fromMap((value as Map).cast<String, dynamic>())),
      longviewGrants: pulumi.Input.decodeList<GetUsersUserLongviewGrant>(map['longviewGrants'], (value) => GetUsersUserLongviewGrant.fromMap((value as Map).cast<String, dynamic>())),
      nodebalancerGrants: pulumi.Input.decodeList<GetUsersUserNodebalancerGrant>(map['nodebalancerGrants'], (value) => GetUsersUserNodebalancerGrant.fromMap((value as Map).cast<String, dynamic>())),
      passwordCreated: map['passwordCreated'] as String,
      restricted: map['restricted'] as bool,
      sshKeys: (map['sshKeys'] as List).cast<String>(),
      stackscriptGrants: pulumi.Input.decodeList<GetUsersUserStackscriptGrant>(map['stackscriptGrants'], (value) => GetUsersUserStackscriptGrant.fromMap((value as Map).cast<String, dynamic>())),
      tfaEnabled: map['tfaEnabled'] as bool,
      userType: map['userType'] as String,
      username: map['username'] as String,
      verifiedPhoneNumber: map['verifiedPhoneNumber'] as String,
      volumeGrants: pulumi.Input.decodeList<GetUsersUserVolumeGrant>(map['volumeGrants'], (value) => GetUsersUserVolumeGrant.fromMap((value as Map).cast<String, dynamic>())),
      vpcGrants: pulumi.Input.decodeList<GetUsersUserVpcGrant>(map['vpcGrants'], (value) => GetUsersUserVpcGrant.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

