import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_instance_attachment_args.dart';
import 'client_instance_attachment_state.dart';

/// ## Import
///
/// EAIS Client Instance Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eais/clientInstanceAttachment:ClientInstanceAttachment example <instance_id>:<client_instance_id>
/// ```
class ClientInstanceAttachment extends pulumi.CustomResource {
  /// EAIS instance category, valid values: `eais`, `ei`, default is `eais`.
  late final pulumi.Output<String?> category;

  /// The ID of the ECS or ECI instance bound to the EAIS instance.
  late final pulumi.Output<String> clientInstanceId;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The Ei instance specification, which is used to filter matching specifications for updating.
  late final pulumi.Output<String> eiInstanceType;

  /// The EAIS instance ID.
  late final pulumi.Output<String> instanceId;

  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [ClientInstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientInstanceAttachment]. {@macro pulumi_eais_client_instance_attachment_client_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientInstanceAttachment(
    String name, {
    ClientInstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eais/clientInstanceAttachment:ClientInstanceAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String?>('category');
    clientInstanceId = registerOutput<String>('clientInstanceId');
    createTime = registerOutput<String>('createTime');
    eiInstanceType = registerOutput<String>('eiInstanceType');
    instanceId = registerOutput<String>('instanceId');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ClientInstanceAttachment] resource's state with the given [name] and [id].
  static ClientInstanceAttachment get(
    String name,
    pulumi.Input<String> id, {
    ClientInstanceAttachmentState? state,
  }) {
    return ClientInstanceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClientInstanceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eais/clientInstanceAttachment:ClientInstanceAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String?>('category');
    clientInstanceId = registerOutput<String>('clientInstanceId');
    createTime = registerOutput<String>('createTime');
    eiInstanceType = registerOutput<String>('eiInstanceType');
    instanceId = registerOutput<String>('instanceId');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
  }
}
