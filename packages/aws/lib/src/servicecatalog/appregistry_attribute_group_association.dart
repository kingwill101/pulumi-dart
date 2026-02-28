import 'package:pulumi/pulumi.dart' as pulumi;
import 'appregistry_attribute_group_association_args.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Attribute Group Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.AppregistryApplication("example", {name: "example-app"});
/// const exampleAppregistryAttributeGroup = new aws.servicecatalog.AppregistryAttributeGroup("example", {
///     name: "example",
///     description: "example description",
///     attributes: JSON.stringify({
///         app: "exampleapp",
///         group: "examplegroup",
///     }),
/// });
/// const exampleAppregistryAttributeGroupAssociation = new aws.servicecatalog.AppregistryAttributeGroupAssociation("example", {
///     applicationId: example.id,
///     attributeGroupId: exampleAppregistryAttributeGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.AppregistryApplication("example", name="example-app")
/// example_appregistry_attribute_group = aws.servicecatalog.AppregistryAttributeGroup("example",
///     name="example",
///     description="example description",
///     attributes=json.dumps({
///         "app": "exampleapp",
///         "group": "examplegroup",
///     }))
/// example_appregistry_attribute_group_association = aws.servicecatalog.AppregistryAttributeGroupAssociation("example",
///     application_id=example.id,
///     attribute_group_id=example_appregistry_attribute_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.AppregistryApplication("example", new()
///     {
///         Name = "example-app",
///     });
///
///     var exampleAppregistryAttributeGroup = new Aws.ServiceCatalog.AppregistryAttributeGroup("example", new()
///     {
///         Name = "example",
///         Description = "example description",
///         Attributes = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["app"] = "exampleapp",
///             ["group"] = "examplegroup",
///         }),
///     });
///
///     var exampleAppregistryAttributeGroupAssociation = new Aws.ServiceCatalog.AppregistryAttributeGroupAssociation("example", new()
///     {
///         ApplicationId = example.Id,
///         AttributeGroupId = exampleAppregistryAttributeGroup.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicecatalog.NewAppregistryApplication(ctx, "example", &servicecatalog.AppregistryApplicationArgs{
/// 			Name: pulumi.String("example-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"app":   "exampleapp",
/// 			"group": "examplegroup",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleAppregistryAttributeGroup, err := servicecatalog.NewAppregistryAttributeGroup(ctx, "example", &servicecatalog.AppregistryAttributeGroupArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example description"),
/// 			Attributes:  pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicecatalog.NewAppregistryAttributeGroupAssociation(ctx, "example", &servicecatalog.AppregistryAttributeGroupAssociationArgs{
/// 			ApplicationId:    example.ID(),
/// 			AttributeGroupId: exampleAppregistryAttributeGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicecatalog.AppregistryApplication;
/// import com.pulumi.aws.servicecatalog.AppregistryApplicationArgs;
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroup;
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroupArgs;
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroupAssociation;
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroupAssociationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new AppregistryApplication("example", AppregistryApplicationArgs.builder()
///             .name("example-app")
///             .build());
///
///         var exampleAppregistryAttributeGroup = new AppregistryAttributeGroup("exampleAppregistryAttributeGroup", AppregistryAttributeGroupArgs.builder()
///             .name("example")
///             .description("example description")
///             .attributes(serializeJson(
///                 jsonObject(
///                     jsonProperty("app", "exampleapp"),
///                     jsonProperty("group", "examplegroup")
///                 )))
///             .build());
///
///         var exampleAppregistryAttributeGroupAssociation = new AppregistryAttributeGroupAssociation("exampleAppregistryAttributeGroupAssociation", AppregistryAttributeGroupAssociationArgs.builder()
///             .applicationId(example.id())
///             .attributeGroupId(exampleAppregistryAttributeGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:AppregistryApplication
///     properties:
///       name: example-app
///   exampleAppregistryAttributeGroup:
///     type: aws:servicecatalog:AppregistryAttributeGroup
///     name: example
///     properties:
///       name: example
///       description: example description
///       attributes:
///         fn::toJSON:
///           app: exampleapp
///           group: examplegroup
///   exampleAppregistryAttributeGroupAssociation:
///     type: aws:servicecatalog:AppregistryAttributeGroupAssociation
///     name: example
///     properties:
///       applicationId: ${example.id}
///       attributeGroupId: ${exampleAppregistryAttributeGroup.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog AppRegistry Attribute Group Association using `application_id` and `attribute_group_id` arguments separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryAttributeGroupAssociation:AppregistryAttributeGroupAssociation example 12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3
/// ```
class AppregistryAttributeGroupAssociation extends pulumi.CustomResource {
  /// ID of the application.
  late final pulumi.Output<String> applicationId;

  /// ID of the attribute group to associate with the application.
  late final pulumi.Output<String> attributeGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AppregistryAttributeGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppregistryAttributeGroupAssociation]. {@macro pulumi_servicecatalog_appregistry_attribute_group_association_appregistry_attribute_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppregistryAttributeGroupAssociation(
    String name, {
    AppregistryAttributeGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/appregistryAttributeGroupAssociation:AppregistryAttributeGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributeGroupId = registerOutput<String>('attributeGroupId');
    this.region = registerOutput<String>('region');
  }
}
