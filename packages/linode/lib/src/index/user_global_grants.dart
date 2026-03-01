// ignore_for_file: unused_element, unnecessary_cast


class UserGlobalGrants {
  /// The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.
  final String? accountAccess;
  /// If true, this User may add Databases.
  final bool? addDatabases;
  /// If true, this User may add Domains.
  final bool? addDomains;
  /// If true, this User may add Firewalls.
  final bool? addFirewalls;
  /// If true, this User may add Images.
  final bool? addImages;
  /// If true, this User may create Linodes.
  final bool? addLinodes;
  /// If true, this User may create Longview clients and view the current plan.
  final bool? addLongview;
  /// If true, this User may add NodeBalancers.
  final bool? addNodebalancers;
  /// If true, this User may add StackScripts.
  final bool? addStackscripts;
  /// If true, this User may add Volumes.
  final bool? addVolumes;
  /// If true, this User may add Virtual Private Clouds (VPCs).
  final bool? addVpcs;
  /// If true, this User may cancel the entire Account.
  final bool? cancelAccount;
  /// If true, this User may manage the Account’s Longview subscription.
  final bool? longviewSubscription;

  /// Creates a new [UserGlobalGrants].
  /// [accountAccess] The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.
  /// [addDatabases] If true, this User may add Databases.
  /// [addDomains] If true, this User may add Domains.
  /// [addFirewalls] If true, this User may add Firewalls.
  /// [addImages] If true, this User may add Images.
  /// [addLinodes] If true, this User may create Linodes.
  /// [addLongview] If true, this User may create Longview clients and view the current plan.
  /// [addNodebalancers] If true, this User may add NodeBalancers.
  /// [addStackscripts] If true, this User may add StackScripts.
  /// [addVolumes] If true, this User may add Volumes.
  /// [addVpcs] If true, this User may add Virtual Private Clouds (VPCs).
  /// [cancelAccount] If true, this User may cancel the entire Account.
  /// [longviewSubscription] If true, this User may manage the Account’s Longview subscription.
  UserGlobalGrants({
    this.accountAccess,
    this.addDatabases,
    this.addDomains,
    this.addFirewalls,
    this.addImages,
    this.addLinodes,
    this.addLongview,
    this.addNodebalancers,
    this.addStackscripts,
    this.addVolumes,
    this.addVpcs,
    this.cancelAccount,
    this.longviewSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': ?accountAccess,
      'addDatabases': ?addDatabases,
      'addDomains': ?addDomains,
      'addFirewalls': ?addFirewalls,
      'addImages': ?addImages,
      'addLinodes': ?addLinodes,
      'addLongview': ?addLongview,
      'addNodebalancers': ?addNodebalancers,
      'addStackscripts': ?addStackscripts,
      'addVolumes': ?addVolumes,
      'addVpcs': ?addVpcs,
      'cancelAccount': ?cancelAccount,
      'longviewSubscription': ?longviewSubscription,
    };
  }

  factory UserGlobalGrants.fromMap(Map<String, dynamic> map) {
    return UserGlobalGrants(
      accountAccess: map['accountAccess'] == null ? null : map['accountAccess'] as String,
      addDatabases: map['addDatabases'] == null ? null : map['addDatabases'] as bool,
      addDomains: map['addDomains'] == null ? null : map['addDomains'] as bool,
      addFirewalls: map['addFirewalls'] == null ? null : map['addFirewalls'] as bool,
      addImages: map['addImages'] == null ? null : map['addImages'] as bool,
      addLinodes: map['addLinodes'] == null ? null : map['addLinodes'] as bool,
      addLongview: map['addLongview'] == null ? null : map['addLongview'] as bool,
      addNodebalancers: map['addNodebalancers'] == null ? null : map['addNodebalancers'] as bool,
      addStackscripts: map['addStackscripts'] == null ? null : map['addStackscripts'] as bool,
      addVolumes: map['addVolumes'] == null ? null : map['addVolumes'] as bool,
      addVpcs: map['addVpcs'] == null ? null : map['addVpcs'] as bool,
      cancelAccount: map['cancelAccount'] == null ? null : map['cancelAccount'] as bool,
      longviewSubscription: map['longviewSubscription'] == null ? null : map['longviewSubscription'] as bool,
    );
  }
}

