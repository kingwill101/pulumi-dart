import 'package:pulumi/pulumi.dart';
import 'service_args9.dart';

/// Creates a new managed service. A managed service is immutable, and is subject to mandatory 30-day data retention. You cannot move a service or recreate it within 30 days after deletion. One producer project can own no more than 500 services. For security and reliability purposes, a production service should be hosted in a dedicated producer project. Operation
/// Auto-naming is currently not supported for this resource.
class Service9 extends CustomResource {
  /// ID of the project that produces and owns this service.
  late final Output<String> producerProjectId;

  /// The name of the service. See the [overview](https://cloud.google.com/service-infrastructure/docs/overview) for naming requirements.
  late final Output<String> serviceName;

  Service9(
    String name, {
    ServiceArgs9? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:servicemanagement/v1:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.producerProjectId = Output.createUnknown<String>();
    this.serviceName = Output.createUnknown<String>();
  }
}
