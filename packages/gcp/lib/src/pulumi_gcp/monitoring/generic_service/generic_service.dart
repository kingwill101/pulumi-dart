import 'package:pulumi/pulumi.dart';
import '../generic_service_basic_service/generic_service_basic_service.dart';
import '../generic_service_telemetry/generic_service_telemetry.dart';
import 'generic_service_args.dart';

/// A Service is a discrete, autonomous, and network-accessible unit,
/// designed to solve an individual concern. In Cloud Monitoring,
/// a Service acts as the root resource under which operational aspects of
/// the service are accessible
///
///
/// To get more information about GenericService, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Service-orientation on Wikipedia](https://en.wikipedia.org/wiki/Service-orientation)
///
/// ## Example Usage
///
/// ### Monitoring Service Example
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myService = new gcp.monitoring.GenericService("my_service", {
/// serviceId: "my-service",
/// displayName: "My Service my-service",
/// userLabels: {
/// my_key: "my_value",
/// my_other_key: "my_other_value",
/// },
/// basicService: {
/// serviceType: "APP_ENGINE",
/// serviceLabels: {
/// module_id: "another-module-id",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_service = gcp.monitoring.GenericService("my_service",
/// service_id="my-service",
/// display_name="My Service my-service",
/// user_labels={
/// "my_key": "my_value",
/// "my_other_key": "my_other_value",
/// },
/// basic_service={
/// "service_type": "APP_ENGINE",
/// "service_labels": {
/// "module_id": "another-module-id",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myService = new Gcp.Monitoring.GenericService("my_service", new()
/// {
/// ServiceId = "my-service",
/// DisplayName = "My Service my-service",
/// UserLabels =
/// {
/// { "my_key", "my_value" },
/// { "my_other_key", "my_other_value" },
/// },
/// BasicService = new Gcp.Monitoring.Inputs.GenericServiceBasicServiceArgs
/// {
/// ServiceType = "APP_ENGINE",
/// ServiceLabels =
/// {
/// { "module_id", "another-module-id" },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := monitoring.NewGenericService(ctx, "my_service", &monitoring.GenericServiceArgs{
/// ServiceId:   pulumi.String("my-service"),
/// DisplayName: pulumi.String("My Service my-service"),
/// UserLabels: pulumi.StringMap{
/// "my_key":       pulumi.String("my_value"),
/// "my_other_key": pulumi.String("my_other_value"),
/// },
/// BasicService: &monitoring.GenericServiceBasicServiceArgs{
/// ServiceType: pulumi.String("APP_ENGINE"),
/// ServiceLabels: pulumi.StringMap{
/// "module_id": pulumi.String("another-module-id"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.GenericService;
/// import com.pulumi.gcp.monitoring.GenericServiceArgs;
/// import com.pulumi.gcp.monitoring.inputs.GenericServiceBasicServiceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myService = new GenericService("myService", GenericServiceArgs.builder()
/// .serviceId("my-service")
/// .displayName("My Service my-service")
/// .userLabels(Map.ofEntries(
/// Map.entry("my_key", "my_value"),
/// Map.entry("my_other_key", "my_other_value")
/// ))
/// .basicService(GenericServiceBasicServiceArgs.builder()
/// .serviceType("APP_ENGINE")
/// .serviceLabels(Map.of("module_id", "another-module-id"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myService:
/// type: gcp:monitoring:GenericService
/// name: my_service
/// properties:
/// serviceId: my-service
/// displayName: My Service my-service
/// userLabels:
/// my_key: my_value
/// my_other_key: my_other_value
/// basicService:
/// serviceType: APP_ENGINE
/// serviceLabels:
/// module_id: another-module-id
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GenericService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service_id}}`
///
/// * `{{project}}/{{service_id}}`
///
/// * `{{service_id}}`
///
/// When using the `pulumi import` command, GenericService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/genericService:GenericService default projects/{{project}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/genericService:GenericService default {{project}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/genericService:GenericService default {{service_id}}
/// ```
class GenericService extends CustomResource {
  /// A well-known service type, defined by its service type and service labels.
  /// Valid values of service types and services labels are described at
  /// https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli
  /// Structure is documented below.
  late final Output<GenericServiceBasicService?> basicService;

  /// Name used for UI elements listing this Service.
  late final Output<String?> displayName;

  /// The full resource name for this service. The syntax is:
  /// projects/[PROJECT_ID]/services/[SERVICE_ID].
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// An optional service ID to use. If not given, the server will generate a
  /// service ID.
  late final Output<String> serviceId;

  /// Configuration for how to query telemetry on a Service.
  /// Structure is documented below.
  late final Output<List<GenericServiceTelemetry>> telemetries;

  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  late final Output<Map<String, String>?> userLabels;

  GenericService(
    String name, {
    GenericServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/genericService:GenericService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.basicService =
        registerOutput<GenericServiceBasicService?>('basicService');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
    this.telemetries =
        registerOutput<List<GenericServiceTelemetry>>('telemetries');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
  }
}
