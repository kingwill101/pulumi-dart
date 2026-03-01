import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';

/// Creates a new managed service. A managed service is immutable, and is subject to mandatory 30-day data retention. You cannot move a service or recreate it within 30 days after deletion. One producer project can own no more than 500 services. For security and reliability purposes, a production service should be hosted in a dedicated producer project. Operation
/// Auto-naming is currently not supported for this resource.
class Service extends pulumi.CustomResource {
  /// ID of the project that produces and owns this service.
  late final pulumi.Output<String> producerProjectId;

  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  late final pulumi.Output<String> serviceName;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_servicemanagement_v1_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:servicemanagement/v1:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.producerProjectId = registerOutput<String>('producerProjectId');
    this.serviceName = registerOutput<String>('serviceName');
  }
}
