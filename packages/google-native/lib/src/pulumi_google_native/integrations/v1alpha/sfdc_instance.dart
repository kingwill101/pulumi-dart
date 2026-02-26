import 'package:pulumi/pulumi.dart';
import 'sfdc_instance_args.dart';

/// Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance.
/// Auto-naming is currently not supported for this resource.
class SfdcInstance extends CustomResource {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  late final Output<List<String>> authConfigId;

  /// Time when the instance is created
  late final Output<String> createTime;

  /// Time when the instance was deleted. Empty if not deleted.
  late final Output<String> deleteTime;

  /// A description of the sfdc instance.
  late final Output<String> description;

  /// User selected unique name/alias to easily reference an instance.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  late final Output<String> name;
  late final Output<String> productId;
  late final Output<String> project;

  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  late final Output<String> serviceAuthority;

  /// The SFDC Org Id. This is defined in salesforce.
  late final Output<String> sfdcOrgId;

  /// Time when the instance was last updated
  late final Output<String> updateTime;

  SfdcInstance(
    String name, {
    SfdcInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:SfdcInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authConfigId = registerOutput<List<String>>('authConfigId');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.project = registerOutput<String>('project');
    this.serviceAuthority = registerOutput<String>('serviceAuthority');
    this.sfdcOrgId = registerOutput<String>('sfdcOrgId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
