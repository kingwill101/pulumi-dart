import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_state.dart';

class Application extends pulumi.CustomResource {
  late final pulumi.Output<bool?> blueGreen;
  late final pulumi.Output<bool?> blueGreenConfirm;
  late final pulumi.Output<String> clusterName;
  late final pulumi.Output<String> defaultDomain;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>?> environment;
  late final pulumi.Output<bool?> latestImage;
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<Map<String, dynamic>>> services;
  late final pulumi.Output<String> template;
  late final pulumi.Output<String?> version;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_cs_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blueGreen = registerOutput<bool?>('blueGreen');
    blueGreenConfirm = registerOutput<bool?>('blueGreenConfirm');
    clusterName = registerOutput<String>('clusterName');
    defaultDomain = registerOutput<String>('defaultDomain');
    description = registerOutput<String?>('description');
    environment = registerOutput<Map<String, String>?>('environment');
    latestImage = registerOutput<bool?>('latestImage');
    this.name = registerOutput<String>('name');
    services = registerOutput<List<Map<String, dynamic>>>('services');
    template = registerOutput<String>('template');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blueGreen = registerOutput<bool?>('blueGreen');
    blueGreenConfirm = registerOutput<bool?>('blueGreenConfirm');
    clusterName = registerOutput<String>('clusterName');
    defaultDomain = registerOutput<String>('defaultDomain');
    description = registerOutput<String?>('description');
    environment = registerOutput<Map<String, String>?>('environment');
    latestImage = registerOutput<bool?>('latestImage');
    this.name = registerOutput<String>('name');
    services = registerOutput<List<Map<String, dynamic>>>('services');
    template = registerOutput<String>('template');
    version = registerOutput<String?>('version');
  }
}
