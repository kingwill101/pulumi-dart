import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_service.dart';
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
  late final pulumi.Output<List<ApplicationService>> services;
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
    this.blueGreen = registerOutput<bool?>('blueGreen');
    this.blueGreenConfirm = registerOutput<bool?>('blueGreenConfirm');
    this.clusterName = registerOutput<String>('clusterName');
    this.defaultDomain = registerOutput<String>('defaultDomain');
    this.description = registerOutput<String?>('description');
    this.environment = registerOutput<Map<String, String>?>('environment');
    this.latestImage = registerOutput<bool?>('latestImage');
    this.name = registerOutput<String>('name');
    this.services = registerOutput<List<ApplicationService>>('services');
    this.template = registerOutput<String>('template');
    this.version = registerOutput<String?>('version');
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
    this.blueGreen = registerOutput<bool?>('blueGreen');
    this.blueGreenConfirm = registerOutput<bool?>('blueGreenConfirm');
    this.clusterName = registerOutput<String>('clusterName');
    this.defaultDomain = registerOutput<String>('defaultDomain');
    this.description = registerOutput<String?>('description');
    this.environment = registerOutput<Map<String, String>?>('environment');
    this.latestImage = registerOutput<bool?>('latestImage');
    this.name = registerOutput<String>('name');
    this.services = registerOutput<List<ApplicationService>>('services');
    this.template = registerOutput<String>('template');
    this.version = registerOutput<String?>('version');
  }
}
