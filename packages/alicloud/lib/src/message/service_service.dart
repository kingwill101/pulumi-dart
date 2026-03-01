import 'package:pulumi/pulumi.dart' as pulumi;

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
    this.status = registerOutput<String>('status');
  }
}
