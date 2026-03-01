// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_without_members_dynamic_membership.dart';

/// {@template pulumi_index_group_without_members_group_without_members_args_doc}
/// The set of arguments for GroupWithoutMembers.
/// {@endtemplate}
/// {@macro pulumi_index_group_without_members_group_without_members_args_doc}
class GroupWithoutMembersArgs {
  /// The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  ///
  /// > **Caution** When using the azuread.AdministrativeUnitMember resource, or the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  final pulumi.Input<List<String>>? administrativeUnitIds;
  /// Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? assignableToRole;
  /// Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `auto_subscribe_new_members` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? autoSubscribeNewMembers;
  /// A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? behaviors;
  /// The description for the group.
  final pulumi.Input<String>? description;
  /// The display name for the group.
  final pulumi.Input<String> displayName;
  /// A `dynamic_membership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  final pulumi.Input<GroupWithoutMembersDynamicMembership>? dynamicMembership;
  /// Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `external_senders_allowed` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? externalSendersAllowed;
  /// Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `hide_from_address_lists` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? hideFromAddressLists;
  /// Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  ///
  /// > **Known Permissions Issue** The `hide_from_outlook_clients` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? hideFromOutlookClients;
  /// Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  final pulumi.Input<bool>? mailEnabled;
  /// The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mailNickname;
  /// The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  final pulumi.Input<String>? onpremisesGroupType;
  /// A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  ///
  /// > **Group Ownership**  It's recommended to always specify one or more group owners, including the principal being used to execute Terraform, such as in the example above. When removing group owners, if a user principal has been assigned ownership, the last user cannot be removed as an owner. Microsoft 365 groups are required to always have at least one owner which _must be a user_ (i.e. not a service principal).
  final pulumi.Input<List<String>>? owners;
  /// If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  final pulumi.Input<bool>? preventDuplicateNames;
  /// A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? provisioningOptions;
  /// Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  final pulumi.Input<bool>? securityEnabled;
  /// The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  final pulumi.Input<String>? theme;
  /// A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mail_enabled` is true. Changing this forces a new resource to be created.
  ///
  /// > **Supported Group Types** At present, only security groups and Microsoft 365 groups can be created or managed with this resource. Distribution groups and mail-enabled security groups are not supported. Microsoft 365 groups can be security-enabled.
  final pulumi.Input<List<String>>? types;
  /// The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  ///
  /// > **Group Name Uniqueness** Group names are not unique within Azure Active Directory. Use the `prevent_duplicate_names` argument to check for existing groups if you want to avoid name collisions.
  final pulumi.Input<String>? visibility;
  /// Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  final pulumi.Input<bool>? writebackEnabled;

  /// Creates a new [GroupWithoutMembersArgs].
  /// [administrativeUnitIds] The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  /// [assignableToRole] Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  /// [autoSubscribeNewMembers] Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  /// [behaviors] A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  /// [description] The description for the group.
  /// [displayName] The display name for the group.
  /// [dynamicMembership] A `dynamic_membership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  /// [externalSendersAllowed] Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  /// [hideFromAddressLists] Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  /// [hideFromOutlookClients] Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  /// [mailEnabled] Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  /// [mailNickname] The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  /// [onpremisesGroupType] The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  /// [owners] A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  /// [preventDuplicateNames] If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  /// [provisioningOptions] A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  /// [securityEnabled] Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  /// [theme] The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  /// [types] A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mail_enabled` is true. Changing this forces a new resource to be created.
  /// [visibility] The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  /// [writebackEnabled] Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  GroupWithoutMembersArgs({
    List<String>? administrativeUnitIds,
    bool? assignableToRole,
    bool? autoSubscribeNewMembers,
    List<String>? behaviors,
    String? description,
    required String displayName,
    GroupWithoutMembersDynamicMembership? dynamicMembership,
    bool? externalSendersAllowed,
    bool? hideFromAddressLists,
    bool? hideFromOutlookClients,
    bool? mailEnabled,
    String? mailNickname,
    String? onpremisesGroupType,
    List<String>? owners,
    bool? preventDuplicateNames,
    List<String>? provisioningOptions,
    bool? securityEnabled,
    String? theme,
    List<String>? types,
    String? visibility,
    bool? writebackEnabled,
  }) :
      administrativeUnitIds = pulumi.Input.asOptionalInput<List<String>>(administrativeUnitIds),
      assignableToRole = pulumi.Input.asOptionalInput<bool>(assignableToRole),
      autoSubscribeNewMembers = pulumi.Input.asOptionalInput<bool>(autoSubscribeNewMembers),
      behaviors = pulumi.Input.asOptionalInput<List<String>>(behaviors),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      dynamicMembership = pulumi.Input.asOptionalInput<GroupWithoutMembersDynamicMembership>(dynamicMembership),
      externalSendersAllowed = pulumi.Input.asOptionalInput<bool>(externalSendersAllowed),
      hideFromAddressLists = pulumi.Input.asOptionalInput<bool>(hideFromAddressLists),
      hideFromOutlookClients = pulumi.Input.asOptionalInput<bool>(hideFromOutlookClients),
      mailEnabled = pulumi.Input.asOptionalInput<bool>(mailEnabled),
      mailNickname = pulumi.Input.asOptionalInput<String>(mailNickname),
      onpremisesGroupType = pulumi.Input.asOptionalInput<String>(onpremisesGroupType),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      preventDuplicateNames = pulumi.Input.asOptionalInput<bool>(preventDuplicateNames),
      provisioningOptions = pulumi.Input.asOptionalInput<List<String>>(provisioningOptions),
      securityEnabled = pulumi.Input.asOptionalInput<bool>(securityEnabled),
      theme = pulumi.Input.asOptionalInput<String>(theme),
      types = pulumi.Input.asOptionalInput<List<String>>(types),
      visibility = pulumi.Input.asOptionalInput<String>(visibility),
      writebackEnabled = pulumi.Input.asOptionalInput<bool>(writebackEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitIds': ?administrativeUnitIds,
      'assignableToRole': ?assignableToRole,
      'autoSubscribeNewMembers': ?autoSubscribeNewMembers,
      'behaviors': ?behaviors,
      'description': ?description,
      'displayName': displayName,
      'dynamicMembership': ?pulumi.Input.mapOptionalInputValue<GroupWithoutMembersDynamicMembership, Map<String, dynamic>>(dynamicMembership, (value) => value.toMap()),
      'externalSendersAllowed': ?externalSendersAllowed,
      'hideFromAddressLists': ?hideFromAddressLists,
      'hideFromOutlookClients': ?hideFromOutlookClients,
      'mailEnabled': ?mailEnabled,
      'mailNickname': ?mailNickname,
      'onpremisesGroupType': ?onpremisesGroupType,
      'owners': ?owners,
      'preventDuplicateNames': ?preventDuplicateNames,
      'provisioningOptions': ?provisioningOptions,
      'securityEnabled': ?securityEnabled,
      'theme': ?theme,
      'types': ?types,
      'visibility': ?visibility,
      'writebackEnabled': ?writebackEnabled,
    };
  }

  factory GroupWithoutMembersArgs.fromMap(Map<String, dynamic> map) {
    return GroupWithoutMembersArgs(
      administrativeUnitIds: map['administrativeUnitIds'] == null ? null : (map['administrativeUnitIds'] as List).cast<String>(),
      assignableToRole: map['assignableToRole'] == null ? null : map['assignableToRole'] as bool,
      autoSubscribeNewMembers: map['autoSubscribeNewMembers'] == null ? null : map['autoSubscribeNewMembers'] as bool,
      behaviors: map['behaviors'] == null ? null : (map['behaviors'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      dynamicMembership: map['dynamicMembership'] == null ? null : GroupWithoutMembersDynamicMembership.fromMap((map['dynamicMembership'] as Map).cast<String, dynamic>()),
      externalSendersAllowed: map['externalSendersAllowed'] == null ? null : map['externalSendersAllowed'] as bool,
      hideFromAddressLists: map['hideFromAddressLists'] == null ? null : map['hideFromAddressLists'] as bool,
      hideFromOutlookClients: map['hideFromOutlookClients'] == null ? null : map['hideFromOutlookClients'] as bool,
      mailEnabled: map['mailEnabled'] == null ? null : map['mailEnabled'] as bool,
      mailNickname: map['mailNickname'] == null ? null : map['mailNickname'] as String,
      onpremisesGroupType: map['onpremisesGroupType'] == null ? null : map['onpremisesGroupType'] as String,
      owners: map['owners'] == null ? null : (map['owners'] as List).cast<String>(),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : map['preventDuplicateNames'] as bool,
      provisioningOptions: map['provisioningOptions'] == null ? null : (map['provisioningOptions'] as List).cast<String>(),
      securityEnabled: map['securityEnabled'] == null ? null : map['securityEnabled'] as bool,
      theme: map['theme'] == null ? null : map['theme'] as String,
      types: map['types'] == null ? null : (map['types'] as List).cast<String>(),
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
      writebackEnabled: map['writebackEnabled'] == null ? null : map['writebackEnabled'] as bool,
    );
  }
}

