import 'package:pulumi/pulumi.dart';
import '../ontap_storage_virtual_machine_active_directory_configuration/ontap_storage_virtual_machine_active_directory_configuration.dart';
import '../ontap_storage_virtual_machine_endpoint/ontap_storage_virtual_machine_endpoint.dart';
import 'ontap_storage_virtual_machine_args.dart';

/// Manages a FSx Storage Virtual Machine.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html) for more information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using a Self-Managed Microsoft Active Directory
///
/// Additional information for using AWS Directory Service with ONTAP File Systems can be found in the [FSx ONTAP Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/self-managed-AD.html).
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Storage Virtual Machine using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapStorageVirtualMachine:OntapStorageVirtualMachine example svm-12345678abcdef123
/// ```
///
/// Certain resource arguments, like `svm_admin_password` and the `self_managed_active_directory` configuation block `password`, do not have a FSx API method for reading the information after creation. If these arguments are set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class OntapStorageVirtualMachine extends CustomResource {
  /// Configuration block that Amazon FSx uses to join the FSx ONTAP Storage Virtual Machine(SVM) to your Microsoft Active Directory (AD) directory. Detailed below.
  late final Output<OntapStorageVirtualMachineActiveDirectoryConfiguration?>
      activeDirectoryConfiguration;

  /// Amazon Resource Name of the storage virtual machine.
  late final Output<String> arn;

  /// The endpoints that are used to access data or to manage the storage virtual machine using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  late final Output<List<OntapStorageVirtualMachineEndpoint>> endpoints;

  /// The ID of the Amazon FSx ONTAP File System that this SVM will be created on.
  late final Output<String> fileSystemId;

  /// The name of the SVM. You can use a maximum of 47 alphanumeric characters, plus the underscore (_) special character.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the root volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`. All volumes created under this SVM will inherit the root security style unless the security style is specified on the volume. Default value is `UNIX`.
  late final Output<String?> rootVolumeSecurityStyle;

  /// Describes the SVM's subtype, e.g. `DEFAULT`
  late final Output<String> subtype;

  /// Specifies the password to use when logging on to the SVM using a secure shell (SSH) connection to the SVM's management endpoint. Doing so enables you to manage the SVM using the NetApp ONTAP CLI or REST API. If you do not specify a password, you can still use the file system's fsxadmin user to manage the SVM.
  late final Output<String?> svmAdminPassword;

  /// A map of tags to assign to the storage virtual machine. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The SVM's UUID (universally unique identifier).
  late final Output<String> uuid;

  OntapStorageVirtualMachine(
    String name, {
    OntapStorageVirtualMachineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapStorageVirtualMachine:OntapStorageVirtualMachine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeDirectoryConfiguration =
        registerOutput<OntapStorageVirtualMachineActiveDirectoryConfiguration?>(
            'activeDirectoryConfiguration');
    this.arn = registerOutput<String>('arn');
    this.endpoints =
        registerOutput<List<OntapStorageVirtualMachineEndpoint>>('endpoints');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rootVolumeSecurityStyle =
        registerOutput<String?>('rootVolumeSecurityStyle');
    this.subtype = registerOutput<String>('subtype');
    this.svmAdminPassword = registerOutput<String?>('svmAdminPassword');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uuid = registerOutput<String>('uuid');
  }
}
