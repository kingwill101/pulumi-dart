import 'package:pulumi/pulumi.dart' as pulumi;
import 'employee_args.dart';
import 'employee_properties_response.dart';
import 'system_data_response.dart';

/// Employee resource
///
/// Uses Azure REST API version 2021-11-01. In version 2.x of the Azure Native provider, it used API version 2021-10-01-preview.
///
/// Other available API versions: 2021-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native contoso [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Employees_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var employee = new AzureNative.Contoso.Employee("employee", new()
///     {
///         EmployeeName = "9KF-f-8b",
///         Location = "itajgxyqozseoygnl",
///         Properties = new AzureNative.Contoso.Inputs.EmployeePropertiesArgs
///         {
///             Age = 30,
///             City = "gydhnntudughbmxlkyzrskcdkotrxn",
///             Profile = "ms",
///         },
///         ResourceGroupName = "rgopenapi",
///         Tags =
///         {
///             { "key2913", "urperxmkkhhkp" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	contoso "github.com/pulumi/pulumi-azure-native-sdk/contoso/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := contoso.NewEmployee(ctx, "employee", &contoso.EmployeeArgs{
/// 			EmployeeName: pulumi.String("9KF-f-8b"),
/// 			Location:     pulumi.String("itajgxyqozseoygnl"),
/// 			Properties: &contoso.EmployeePropertiesArgs{
/// 				Age:     pulumi.Int(30),
/// 				City:    pulumi.String("gydhnntudughbmxlkyzrskcdkotrxn"),
/// 				Profile: pulumi.String("ms"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			Tags: pulumi.StringMap{
/// 				"key2913": pulumi.String("urperxmkkhhkp"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.contoso.Employee;
/// import com.pulumi.azurenative.contoso.EmployeeArgs;
/// import com.pulumi.azurenative.contoso.inputs.EmployeePropertiesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var employee = new Employee("employee", EmployeeArgs.builder()
///             .employeeName("9KF-f-8b")
///             .location("itajgxyqozseoygnl")
///             .properties(EmployeePropertiesArgs.builder()
///                 .age(30)
///                 .city("gydhnntudughbmxlkyzrskcdkotrxn")
///                 .profile("ms")
///                 .build())
///             .resourceGroupName("rgopenapi")
///             .tags(Map.of("key2913", "urperxmkkhhkp"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const employee = new azure_native.contoso.Employee("employee", {
///     employeeName: "9KF-f-8b",
///     location: "itajgxyqozseoygnl",
///     properties: {
///         age: 30,
///         city: "gydhnntudughbmxlkyzrskcdkotrxn",
///         profile: "ms",
///     },
///     resourceGroupName: "rgopenapi",
///     tags: {
///         key2913: "urperxmkkhhkp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// employee = azure_native.contoso.Employee("employee",
///     employee_name="9KF-f-8b",
///     location="itajgxyqozseoygnl",
///     properties={
///         "age": 30,
///         "city": "gydhnntudughbmxlkyzrskcdkotrxn",
///         "profile": "ms",
///     },
///     resource_group_name="rgopenapi",
///     tags={
///         "key2913": "urperxmkkhhkp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   employee:
///     type: azure-native:contoso:Employee
///     properties:
///       employeeName: 9KF-f-8b
///       location: itajgxyqozseoygnl
///       properties:
///         age: 30
///         city: gydhnntudughbmxlkyzrskcdkotrxn
///         profile: ms
///       resourceGroupName: rgopenapi
///       tags:
///         key2913: urperxmkkhhkp
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:contoso:Employee xepyxhpb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Contoso/employees/{employeeName}
/// ```
class Employee extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<EmployeePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Employee].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Employee]. {@macro pulumi_contoso_employee_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Employee(
    String name, {
    EmployeeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:contoso:Employee',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EmployeePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EmployeePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
