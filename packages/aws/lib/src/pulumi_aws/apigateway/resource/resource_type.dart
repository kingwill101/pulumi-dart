import 'package:pulumi/pulumi.dart';
import 'resource_args.dart';

/// Provides an API Gateway Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDemoAPI = new aws.apigateway.RestApi("MyDemoAPI", {
/// name: "MyDemoAPI",
/// description: "This is my API for demonstration purposes",
/// });
/// const myDemoResource = new aws.apigateway.Resource("MyDemoResource", {
/// restApi: myDemoAPI.id,
/// parentId: myDemoAPI.rootResourceId,
/// pathPart: "mydemoresource",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_demo_api = aws.apigateway.RestApi("MyDemoAPI",
/// name="MyDemoAPI",
/// description="This is my API for demonstration purposes")
/// my_demo_resource = aws.apigateway.Resource("MyDemoResource",
/// rest_api=my_demo_api.id,
/// parent_id=my_demo_api.root_resource_id,
/// path_part="mydemoresource")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myDemoAPI = new Aws.ApiGateway.RestApi("MyDemoAPI", new()
/// {
/// Name = "MyDemoAPI",
/// Description = "This is my API for demonstration purposes",
/// });
///
/// var myDemoResource = new Aws.ApiGateway.Resource("MyDemoResource", new()
/// {
/// RestApi = myDemoAPI.Id,
/// ParentId = myDemoAPI.RootResourceId,
/// PathPart = "mydemoresource",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myDemoAPI, err := apigateway.NewRestApi(ctx, "MyDemoAPI", &apigateway.RestApiArgs{
/// Name:        pulumi.String("MyDemoAPI"),
/// Description: pulumi.String("This is my API for demonstration purposes"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewResource(ctx, "MyDemoResource", &apigateway.ResourceArgs{
/// RestApi:  myDemoAPI.ID(),
/// ParentId: myDemoAPI.RootResourceId,
/// PathPart: pulumi.String("mydemoresource"),
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
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.Resource;
/// import com.pulumi.aws.apigateway.ResourceArgs;
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
/// var myDemoAPI = new RestApi("myDemoAPI", RestApiArgs.builder()
/// .name("MyDemoAPI")
/// .description("This is my API for demonstration purposes")
/// .build());
///
/// var myDemoResource = new Resource("myDemoResource", ResourceArgs.builder()
/// .restApi(myDemoAPI.id())
/// .parentId(myDemoAPI.rootResourceId())
/// .pathPart("mydemoresource")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myDemoAPI:
/// type: aws:apigateway:RestApi
/// name: MyDemoAPI
/// properties:
/// name: MyDemoAPI
/// description: This is my API for demonstration purposes
/// myDemoResource:
/// type: aws:apigateway:Resource
/// name: MyDemoResource
/// properties:
/// restApi: ${myDemoAPI.id}
/// parentId: ${myDemoAPI.rootResourceId}
/// pathPart: mydemoresource
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigateway.Resource`" pulumi-lang-dotnet="`aws.apigateway.Resource`" pulumi-lang-go="`apigateway.Resource`" pulumi-lang-python="`apigateway.Resource`" pulumi-lang-yaml="`aws.apigateway.Resource`" pulumi-lang-java="`aws.apigateway.Resource`">`aws.apigateway.Resource`</span> using `REST-API-ID/RESOURCE-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/resource:Resource example 12345abcde/67890fghij
/// ```
class ResourceType extends CustomResource {
  /// ID of the parent API resource
  late final Output<String> parentId;

  /// Complete path for this API resource, including all parent paths.
  late final Output<String> path;

  /// Last path segment of this API resource.
  late final Output<String> pathPart;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated REST API
  late final Output<String> restApi;

  ResourceType(
    String name, {
    ResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/resource:Resource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.parentId = registerOutput<String>('parentId');
    this.path = registerOutput<String>('path');
    this.pathPart = registerOutput<String>('pathPart');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
  }
}
