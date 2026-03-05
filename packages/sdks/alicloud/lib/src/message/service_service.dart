import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_state.dart';

class ServiceService extends pulumi.CustomResource {
  /// The status of the Service.
  late final pulumi.Output<String> status;

  /// Creates a new [ServiceService].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  ServiceService(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:message/serviceService:ServiceService',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ServiceService] resource's state with the given [name] and [id].
  static ServiceService get(
    String name,
    pulumi.Input<String> id, {
    ServiceServiceState? state,
  }) {
    return ServiceService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:message/serviceService:ServiceService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    status = registerOutput<String>('status');
  }
}
