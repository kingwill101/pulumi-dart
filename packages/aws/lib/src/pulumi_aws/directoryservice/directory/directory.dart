import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_connect_settings/directory_connect_settings.dart';
import '../directory_vpc_settings/directory_vpc_settings.dart';
import 'directory_args.dart';

/// Provides a Simple or Managed Microsoft directory in AWS Directory Service.
///
/// ## Example Usage
///
/// ### SimpleAD
///
///
///
/// ### Microsoft Active Directory (MicrosoftAD)
///
///
///
/// ### Microsoft Active Directory Connector (ADConnector)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DirectoryService directories using the directory `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/directory:Directory sample d-926724cf57
/// ```
class Directory extends pulumi.CustomResource {
  /// The access URL for the directory, such as `http://alias.awsapps.com`.
  late final pulumi.Output<String> accessUrl;

  /// The alias for the directory (must be unique amongst all aliases in AWS). Required for `enable_sso`.
  late final pulumi.Output<String> alias;

  /// Connector related information about the directory. Fields documented below.
  late final pulumi.Output<DirectoryConnectSettings?> connectSettings;

  /// A textual description for the directory.
  late final pulumi.Output<String?> description;

  /// The number of domain controllers desired in the directory. Minimum value of `2`. Scaling of domain controllers is only supported for `MicrosoftAD` directories.
  late final pulumi.Output<int> desiredNumberOfDomainControllers;

  /// A list of IP addresses of the DNS servers for the directory or connector.
  late final pulumi.Output<List<String>> dnsIpAddresses;

  /// The MicrosoftAD edition (`Standard` or `Enterprise`). Defaults to `Enterprise`.
  late final pulumi.Output<String> edition;

  /// Whether to enable single-sign on for the directory. Requires `alias`. Defaults to `false`.
  late final pulumi.Output<bool?> enableSso;

  /// The fully qualified name for the directory, such as `corp.example.com`
  late final pulumi.Output<String> name;

  /// The password for the directory administrator or connector user.
  late final pulumi.Output<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the security group created by the directory.
  late final pulumi.Output<String> securityGroupId;

  /// The short name of the directory, such as `CORP`.
  late final pulumi.Output<String> shortName;

  /// (For `SimpleAD` and `ADConnector` types) The size of the directory (`Small` or `Large` are accepted values). `Large` by default.
  late final pulumi.Output<String> size;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD` are accepted values). Defaults to `SimpleAD`.
  late final pulumi.Output<String?> type;

  /// VPC related information about the directory. Fields documented below.
  late final pulumi.Output<DirectoryVpcSettings?> vpcSettings;

  Directory(
    String name, {
    DirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/directory:Directory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessUrl = registerOutput<String>('accessUrl');
    this.alias = registerOutput<String>('alias');
    this.connectSettings =
        registerOutput<DirectoryConnectSettings?>('connectSettings');
    this.description = registerOutput<String?>('description');
    this.desiredNumberOfDomainControllers =
        registerOutput<int>('desiredNumberOfDomainControllers');
    this.dnsIpAddresses = registerOutput<List<String>>('dnsIpAddresses');
    this.edition = registerOutput<String>('edition');
    this.enableSso = registerOutput<bool?>('enableSso');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.shortName = registerOutput<String>('shortName');
    this.size = registerOutput<String>('size');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.vpcSettings = registerOutput<DirectoryVpcSettings?>('vpcSettings');
  }
}
