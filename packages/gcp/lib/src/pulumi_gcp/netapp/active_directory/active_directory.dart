import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_args.dart';

/// ActiveDirectory is the public representation of the active directory config.
///
///
/// To get more information about ActiveDirectory, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.activeDirectories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/active-directory/about-ad)
///
///
///
/// ## Example Usage
///
/// ### Netapp Active Directory Full
///
///
///
///
/// ## Import
///
/// ActiveDirectory can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ActiveDirectory can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/activeDirectory:ActiveDirectory default projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/activeDirectory:ActiveDirectory default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/activeDirectory:ActiveDirectory default {{location}}/{{name}}
/// ```
class ActiveDirectory extends pulumi.CustomResource {
  /// Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  late final pulumi.Output<List<String>?> administrators;

  /// Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  late final pulumi.Output<bool?> aesEncryption;

  /// Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  late final pulumi.Output<List<String>?> backupOperators;

  /// Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Comma separated list of DNS server IP addresses for the Active Directory domain.
  late final pulumi.Output<String> dns;

  /// Fully qualified domain name for the Active Directory domain.
  late final pulumi.Output<String> domain;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted.
  late final pulumi.Output<bool?> encryptDcConnections;

  /// Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only required for volumes using kerberized NFSv4.1
  late final pulumi.Output<String?> kdcHostname;

  /// IP address of the Active Directory server used as Kerberos Key Distribution Center.
  late final pulumi.Output<String?> kdcIp;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Specifies whether or not the LDAP traffic needs to be signed.
  late final pulumi.Output<bool?> ldapSigning;

  /// Name of the region for the policy to apply to.
  late final pulumi.Output<String> location;

  /// The resource name of the Active Directory pool. Needs to be unique per location.
  late final pulumi.Output<String> name;

  /// NetBIOS name prefix of the server to be created.
  /// A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
  /// `\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME`
  late final pulumi.Output<String> netBiosPrefix;

  /// Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups).
  late final pulumi.Output<bool?> nfsUsersWithLdap;

  /// Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// Defaults to `CN=Computers` if left empty.
  late final pulumi.Output<String> organizationalUnit;
  late final pulumi.Output<String> password;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  late final pulumi.Output<List<String>?> securityOperators;

  /// Specifies an Active Directory site to manage domain controller selection.
  /// Use when Active Directory domain controllers in multiple regions are configured. Defaults to `Default-First-Site-Name` if left empty.
  late final pulumi.Output<String?> site;

  /// The state of the Active Directory policy (not the Active Directory itself).
  late final pulumi.Output<String> state;

  /// The state details of the Active Directory.
  late final pulumi.Output<String> stateDetails;

  /// Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  late final pulumi.Output<String> username;

  ActiveDirectory(
    String name, {
    ActiveDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/activeDirectory:ActiveDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administrators = registerOutput<List<String>?>('administrators');
    this.aesEncryption = registerOutput<bool?>('aesEncryption');
    this.backupOperators = registerOutput<List<String>?>('backupOperators');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dns = registerOutput<String>('dns');
    this.domain = registerOutput<String>('domain');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptDcConnections = registerOutput<bool?>('encryptDcConnections');
    this.kdcHostname = registerOutput<String?>('kdcHostname');
    this.kdcIp = registerOutput<String?>('kdcIp');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.ldapSigning = registerOutput<bool?>('ldapSigning');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.netBiosPrefix = registerOutput<String>('netBiosPrefix');
    this.nfsUsersWithLdap = registerOutput<bool?>('nfsUsersWithLdap');
    this.organizationalUnit = registerOutput<String>('organizationalUnit');
    this.password = registerOutput<String>('password');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.securityOperators = registerOutput<List<String>?>('securityOperators');
    this.site = registerOutput<String?>('site');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.username = registerOutput<String>('username');
  }
}
