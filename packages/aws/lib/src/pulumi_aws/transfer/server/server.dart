import 'package:pulumi/pulumi.dart';
import '../server_endpoint_details/server_endpoint_details.dart';
import '../server_protocol_details/server_protocol_details.dart';
import '../server_s3_storage_options/server_s3_storage_options.dart';
import '../server_workflow_details/server_workflow_details.dart';
import 'server_args.dart';

/// Provides a AWS Transfer Server resource.
///
/// > **NOTE on AWS IAM permissions:** If the <span pulumi-lang-nodejs="`endpointType`" pulumi-lang-dotnet="`EndpointType`" pulumi-lang-go="`endpointType`" pulumi-lang-python="`endpoint_type`" pulumi-lang-yaml="`endpointType`" pulumi-lang-java="`endpointType`">`endpoint_type`</span> is set to `VPC`, the `ec2:DescribeVpcEndpoints` and `ec2:ModifyVpcEndpoint` [actions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonec2.html#amazonec2-actions-as-permissions) are used.
///
/// > **NOTE:** Use the <span pulumi-lang-nodejs="`aws.transfer.Tag`" pulumi-lang-dotnet="`aws.transfer.Tag`" pulumi-lang-go="`transfer.Tag`" pulumi-lang-python="`transfer.Tag`" pulumi-lang-yaml="`aws.transfer.Tag`" pulumi-lang-java="`aws.transfer.Tag`">`aws.transfer.Tag`</span> resource to manage the system tags used for [custom hostnames](https://docs.aws.amazon.com/transfer/latest/userguide/requirements-dns.html#tag-custom-hostname-cdk).
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {tags: {
/// Name: "Example",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example", tags={
/// "Name": "Example",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// Tags =
/// {
/// { "Name", "Example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example"),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .tags(Map.of("Name", "Example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// tags:
/// Name: Example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Security Policy Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {securityPolicyName: "TransferSecurityPolicy-2020-06"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example", security_policy_name="TransferSecurityPolicy-2020-06")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// SecurityPolicyName = "TransferSecurityPolicy-2020-06",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// SecurityPolicyName: pulumi.String("TransferSecurityPolicy-2020-06"),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .securityPolicyName("TransferSecurityPolicy-2020-06")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// securityPolicyName: TransferSecurityPolicy-2020-06
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### VPC Endpoint
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {
/// endpointType: "VPC",
/// endpointDetails: {
/// addressAllocationIds: [exampleAwsEip.id],
/// subnetIds: [exampleAwsSubnet.id],
/// vpcId: exampleAwsVpc.id,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example",
/// endpoint_type="VPC",
/// endpoint_details={
/// "address_allocation_ids": [example_aws_eip["id"]],
/// "subnet_ids": [example_aws_subnet["id"]],
/// "vpc_id": example_aws_vpc["id"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// EndpointType = "VPC",
/// EndpointDetails = new Aws.Transfer.Inputs.ServerEndpointDetailsArgs
/// {
/// AddressAllocationIds = new[]
/// {
/// exampleAwsEip.Id,
/// },
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcId = exampleAwsVpc.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// EndpointType: pulumi.String("VPC"),
/// EndpointDetails: &transfer.ServerEndpointDetailsArgs{
/// AddressAllocationIds: pulumi.StringArray{
/// exampleAwsEip.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
/// import com.pulumi.aws.transfer.inputs.ServerEndpointDetailsArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .endpointType("VPC")
/// .endpointDetails(ServerEndpointDetailsArgs.builder()
/// .addressAllocationIds(exampleAwsEip.id())
/// .subnetIds(exampleAwsSubnet.id())
/// .vpcId(exampleAwsVpc.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// endpointType: VPC
/// endpointDetails:
/// addressAllocationIds:
/// - ${exampleAwsEip.id}
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS Directory authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {
/// identityProviderType: "AWS_DIRECTORY_SERVICE",
/// directoryId: exampleAwsDirectoryServiceDirectory.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example",
/// identity_provider_type="AWS_DIRECTORY_SERVICE",
/// directory_id=example_aws_directory_service_directory["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// IdentityProviderType = "AWS_DIRECTORY_SERVICE",
/// DirectoryId = exampleAwsDirectoryServiceDirectory.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// IdentityProviderType: pulumi.String("AWS_DIRECTORY_SERVICE"),
/// DirectoryId:          pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .identityProviderType("AWS_DIRECTORY_SERVICE")
/// .directoryId(exampleAwsDirectoryServiceDirectory.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// identityProviderType: AWS_DIRECTORY_SERVICE
/// directoryId: ${exampleAwsDirectoryServiceDirectory.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS Lambda authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {
/// identityProviderType: "AWS_LAMBDA",
/// "function": exampleAwsLambdaIdentityProvider.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example",
/// identity_provider_type="AWS_LAMBDA",
/// function=example_aws_lambda_identity_provider["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// IdentityProviderType = "AWS_LAMBDA",
/// Function = exampleAwsLambdaIdentityProvider.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// IdentityProviderType: pulumi.String("AWS_LAMBDA"),
/// Function:             pulumi.Any(exampleAwsLambdaIdentityProvider.Arn),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .identityProviderType("AWS_LAMBDA")
/// .function(exampleAwsLambdaIdentityProvider.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// identityProviderType: AWS_LAMBDA
/// function: ${exampleAwsLambdaIdentityProvider.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Protocols
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Server("example", {
/// endpointType: "VPC",
/// endpointDetails: {
/// subnetIds: [exampleAwsSubnet.id],
/// vpcId: exampleAwsVpc.id,
/// },
/// protocols: [
/// "FTP",
/// "FTPS",
/// ],
/// certificate: exampleAwsAcmCertificate.arn,
/// identityProviderType: "API_GATEWAY",
/// url: `${exampleAwsApiGatewayDeployment.invokeUrl}${exampleAwsApiGatewayResource.path}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Server("example",
/// endpoint_type="VPC",
/// endpoint_details={
/// "subnet_ids": [example_aws_subnet["id"]],
/// "vpc_id": example_aws_vpc["id"],
/// },
/// protocols=[
/// "FTP",
/// "FTPS",
/// ],
/// certificate=example_aws_acm_certificate["arn"],
/// identity_provider_type="API_GATEWAY",
/// url=f"{example_aws_api_gateway_deployment['invokeUrl']}{example_aws_api_gateway_resource['path']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Server("example", new()
/// {
/// EndpointType = "VPC",
/// EndpointDetails = new Aws.Transfer.Inputs.ServerEndpointDetailsArgs
/// {
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcId = exampleAwsVpc.Id,
/// },
/// Protocols = new[]
/// {
/// "FTP",
/// "FTPS",
/// },
/// Certificate = exampleAwsAcmCertificate.Arn,
/// IdentityProviderType = "API_GATEWAY",
/// Url = $"{exampleAwsApiGatewayDeployment.InvokeUrl}{exampleAwsApiGatewayResource.Path}",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewServer(ctx, "example", &transfer.ServerArgs{
/// EndpointType: pulumi.String("VPC"),
/// EndpointDetails: &transfer.ServerEndpointDetailsArgs{
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// },
/// Protocols: pulumi.StringArray{
/// pulumi.String("FTP"),
/// pulumi.String("FTPS"),
/// },
/// Certificate:          pulumi.Any(exampleAwsAcmCertificate.Arn),
/// IdentityProviderType: pulumi.String("API_GATEWAY"),
/// Url:                  pulumi.Sprintf("%v%v", exampleAwsApiGatewayDeployment.InvokeUrl, exampleAwsApiGatewayResource.Path),
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
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
/// import com.pulumi.aws.transfer.inputs.ServerEndpointDetailsArgs;
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
/// var example = new Server("example", ServerArgs.builder()
/// .endpointType("VPC")
/// .endpointDetails(ServerEndpointDetailsArgs.builder()
/// .subnetIds(exampleAwsSubnet.id())
/// .vpcId(exampleAwsVpc.id())
/// .build())
/// .protocols(
/// "FTP",
/// "FTPS")
/// .certificate(exampleAwsAcmCertificate.arn())
/// .identityProviderType("API_GATEWAY")
/// .url(String.format("%s%s", exampleAwsApiGatewayDeployment.invokeUrl(),exampleAwsApiGatewayResource.path()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Server
/// properties:
/// endpointType: VPC
/// endpointDetails:
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcId: ${exampleAwsVpc.id}
/// protocols:
/// - FTP
/// - FTPS
/// certificate: ${exampleAwsAcmCertificate.arn}
/// identityProviderType: API_GATEWAY
/// url: ${exampleAwsApiGatewayDeployment.invokeUrl}${exampleAwsApiGatewayResource.path}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Using Structured Logging Destinations
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const transfer = new aws.cloudwatch.LogGroup("transfer", {namePrefix: "transfer_test_"});
/// const transferAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["transfer.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const iamForTransfer = new aws.iam.Role("iam_for_transfer", {
/// namePrefix: "iam_for_transfer_",
/// assumeRolePolicy: transferAssumeRole.then(transferAssumeRole => transferAssumeRole.json),
/// managedPolicyArns: ["arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"],
/// });
/// const transferServer = new aws.transfer.Server("transfer", {
/// endpointType: "PUBLIC",
/// loggingRole: iamForTransfer.arn,
/// protocols: ["SFTP"],
/// structuredLogDestinations: [pulumi.interpolate`${transfer.arn}:*`],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// transfer = aws.cloudwatch.LogGroup("transfer", name_prefix="transfer_test_")
/// transfer_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["transfer.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// iam_for_transfer = aws.iam.Role("iam_for_transfer",
/// name_prefix="iam_for_transfer_",
/// assume_role_policy=transfer_assume_role.json,
/// managed_policy_arns=["arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"])
/// transfer_server = aws.transfer.Server("transfer",
/// endpoint_type="PUBLIC",
/// logging_role=iam_for_transfer.arn,
/// protocols=["SFTP"],
/// structured_log_destinations=[transfer.arn.apply(lambda arn: f"{arn}:*")])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var transfer = new Aws.CloudWatch.LogGroup("transfer", new()
/// {
/// NamePrefix = "transfer_test_",
/// });
///
/// var transferAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "transfer.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var iamForTransfer = new Aws.Iam.Role("iam_for_transfer", new()
/// {
/// NamePrefix = "iam_for_transfer_",
/// AssumeRolePolicy = transferAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// ManagedPolicyArns = new[]
/// {
/// "arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess",
/// },
/// });
///
/// var transferServer = new Aws.Transfer.Server("transfer", new()
/// {
/// EndpointType = "PUBLIC",
/// LoggingRole = iamForTransfer.Arn,
/// Protocols = new[]
/// {
/// "SFTP",
/// },
/// StructuredLogDestinations = new[]
/// {
/// transfer.Arn.Apply(arn => $"{arn}:*"),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// transfer, err := cloudwatch.NewLogGroup(ctx, "transfer", &cloudwatch.LogGroupArgs{
/// NamePrefix: pulumi.String("transfer_test_"),
/// })
/// if err != nil {
/// return err
/// }
/// transferAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "transfer.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// iamForTransfer, err := iam.NewRole(ctx, "iam_for_transfer", &iam.RoleArgs{
/// NamePrefix:       pulumi.String("iam_for_transfer_"),
/// AssumeRolePolicy: pulumi.String(transferAssumeRole.Json),
/// ManagedPolicyArns: pulumi.StringArray{
/// pulumi.String("arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = transfer.NewServer(ctx, "transfer", &transfer.ServerArgs{
/// EndpointType: pulumi.String("PUBLIC"),
/// LoggingRole:  iamForTransfer.Arn,
/// Protocols: pulumi.StringArray{
/// pulumi.String("SFTP"),
/// },
/// StructuredLogDestinations: pulumi.StringArray{
/// transfer.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:*", arn), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.transfer.Server;
/// import com.pulumi.aws.transfer.ServerArgs;
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
/// var transfer = new LogGroup("transfer", LogGroupArgs.builder()
/// .namePrefix("transfer_test_")
/// .build());
///
/// final var transferAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("transfer.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var iamForTransfer = new Role("iamForTransfer", RoleArgs.builder()
/// .namePrefix("iam_for_transfer_")
/// .assumeRolePolicy(transferAssumeRole.json())
/// .managedPolicyArns("arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess")
/// .build());
///
/// var transferServer = new Server("transferServer", ServerArgs.builder()
/// .endpointType("PUBLIC")
/// .loggingRole(iamForTransfer.arn())
/// .protocols("SFTP")
/// .structuredLogDestinations(transfer.arn().applyValue(_arn -> String.format("%s:*", _arn)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// transfer:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// namePrefix: transfer_test_
/// iamForTransfer:
/// type: aws:iam:Role
/// name: iam_for_transfer
/// properties:
/// namePrefix: iam_for_transfer_
/// assumeRolePolicy: ${transferAssumeRole.json}
/// managedPolicyArns:
/// - arn:aws:iam::aws:policy/service-role/AWSTransferLoggingAccess
/// transferServer:
/// type: aws:transfer:Server
/// name: transfer
/// properties:
/// endpointType: PUBLIC
/// loggingRole: ${iamForTransfer.arn}
/// protocols:
/// - SFTP
/// structuredLogDestinations:
/// - ${transfer.arn}:*
/// variables:
/// transferAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - transfer.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// In Terraform v1.5.0 and later, use an <span pulumi-lang-nodejs="`import`" pulumi-lang-dotnet="`Import`" pulumi-lang-go="`import`" pulumi-lang-python="`import`" pulumi-lang-yaml="`import`" pulumi-lang-java="`import`">`import`</span> Block to import Transfer Servers using the server <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
///
/// Using `pulumi import`, import Transfer Servers using the server <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/server:Server example s-12345678
/// ```
///
/// Certain resource arguments, such as <span pulumi-lang-nodejs="`hostKey`" pulumi-lang-dotnet="`HostKey`" pulumi-lang-go="`hostKey`" pulumi-lang-python="`host_key`" pulumi-lang-yaml="`hostKey`" pulumi-lang-java="`hostKey`">`host_key`</span>, cannot be read via the API and imported into the provider. This provider will display a difference for these arguments the first run after import if declared in the provider configuration for an imported resource.
class Server extends CustomResource {
  /// Amazon Resource Name (ARN) of Transfer Server
  late final Output<String> arn;

  /// The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. This is required when <span pulumi-lang-nodejs="`protocols`" pulumi-lang-dotnet="`Protocols`" pulumi-lang-go="`protocols`" pulumi-lang-python="`protocols`" pulumi-lang-yaml="`protocols`" pulumi-lang-java="`protocols`">`protocols`</span> is set to `FTPS`
  late final Output<String?> certificate;

  /// The directory service ID of the directory service you want to connect to with an <span pulumi-lang-nodejs="`identityProviderType`" pulumi-lang-dotnet="`IdentityProviderType`" pulumi-lang-go="`identityProviderType`" pulumi-lang-python="`identity_provider_type`" pulumi-lang-yaml="`identityProviderType`" pulumi-lang-java="`identityProviderType`">`identity_provider_type`</span> of `AWS_DIRECTORY_SERVICE`.
  late final Output<String?> directoryId;

  /// The domain of the storage system that is used for file transfers. Valid values are: `S3` and `EFS`. The default value is `S3`.
  late final Output<String?> domain;

  /// The endpoint of the Transfer Server (e.g., `s-12345678.server.transfer.REGION.amazonaws.com`)
  late final Output<String> endpoint;

  /// The virtual private cloud (VPC) endpoint settings that you want to configure for your SFTP server. See <span pulumi-lang-nodejs="`endpointDetails`" pulumi-lang-dotnet="`EndpointDetails`" pulumi-lang-go="`endpointDetails`" pulumi-lang-python="`endpoint_details`" pulumi-lang-yaml="`endpointDetails`" pulumi-lang-java="`endpointDetails`">`endpoint_details`</span> Block below for details.
  late final Output<ServerEndpointDetails?> endpointDetails;

  /// The type of endpoint that you want your SFTP server connect to. If you connect to a `VPC` (or `VPC_ENDPOINT`), your SFTP server isn't accessible over the public internet. If you want to connect your SFTP server via public internet, set `PUBLIC`.  Defaults to `PUBLIC`.
  late final Output<String?> endpointType;

  /// A boolean that indicates all users associated with the server should be deleted so that the Server can be destroyed without error. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This option only applies to servers configured with a `SERVICE_MANAGED` <span pulumi-lang-nodejs="`identityProviderType`" pulumi-lang-dotnet="`IdentityProviderType`" pulumi-lang-go="`identityProviderType`" pulumi-lang-python="`identity_provider_type`" pulumi-lang-yaml="`identityProviderType`" pulumi-lang-java="`identityProviderType`">`identity_provider_type`</span>.
  late final Output<bool?> forceDestroy;

  /// The ARN for a lambda function to use for the Identity provider with an <span pulumi-lang-nodejs="`identityProviderType`" pulumi-lang-dotnet="`IdentityProviderType`" pulumi-lang-go="`identityProviderType`" pulumi-lang-python="`identity_provider_type`" pulumi-lang-yaml="`identityProviderType`" pulumi-lang-java="`identityProviderType`">`identity_provider_type`</span> of `AWS_LAMBDA`.
  late final Output<String?> function;

  /// RSA, ECDSA, or ED25519 private key (e.g., as generated by the `ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key`, `ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key` or `ssh-keygen -t ed25519 -N "" -f my-new-server-key` commands).
  late final Output<String?> hostKey;

  /// This value contains the message-digest algorithm (MD5) hash of the server's host key. This value is equivalent to the output of the `ssh-keygen -l -E md5 -f my-new-server-key` command.
  late final Output<String> hostKeyFingerprint;

  /// The mode of authentication enabled for this service. The default value is `SERVICE_MANAGED`, which allows you to store and access SFTP user credentials within the service. `API_GATEWAY` indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice. Using `AWS_DIRECTORY_SERVICE` will allow for authentication against AWS Managed Active Directory or Microsoft Active Directory in your on-premises environment, or in AWS using AD Connectors. Use the `AWS_LAMBDA` value to directly use a Lambda function as your identity provider. If you choose this value, you must specify the ARN for the lambda function in the <span pulumi-lang-nodejs="`function`" pulumi-lang-dotnet="`Function`" pulumi-lang-go="`function`" pulumi-lang-python="`function`" pulumi-lang-yaml="`function`" pulumi-lang-java="`function`">`function`</span> argument.
  late final Output<String?> identityProviderType;

  /// Amazon Resource Name (ARN) of the IAM role used to authenticate the user account with an <span pulumi-lang-nodejs="`identityProviderType`" pulumi-lang-dotnet="`IdentityProviderType`" pulumi-lang-go="`identityProviderType`" pulumi-lang-python="`identity_provider_type`" pulumi-lang-yaml="`identityProviderType`" pulumi-lang-java="`identityProviderType`">`identity_provider_type`</span> of `API_GATEWAY`.
  late final Output<String?> invocationRole;

  /// Amazon Resource Name (ARN) of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes.
  late final Output<String?> loggingRole;

  /// Specify a string to display when users connect to a server. This string is displayed after the user authenticates. The SFTP protocol does not support post-authentication display banners.
  late final Output<String?> postAuthenticationLoginBanner;

  /// Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
  late final Output<String?> preAuthenticationLoginBanner;

  /// The protocol settings that are configured for your server. See <span pulumi-lang-nodejs="`protocolDetails`" pulumi-lang-dotnet="`ProtocolDetails`" pulumi-lang-go="`protocolDetails`" pulumi-lang-python="`protocol_details`" pulumi-lang-yaml="`protocolDetails`" pulumi-lang-java="`protocolDetails`">`protocol_details`</span> Block below for details.
  late final Output<ServerProtocolDetails> protocolDetails;

  /// Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. This defaults to `SFTP` . The available protocols are:
  /// * `AS2`: File transfer over Applicability Statement 2
  /// * `SFTP`: File transfer over SSH
  /// * `FTPS`: File transfer with TLS encryption
  /// * `FTP`: Unencrypted file transfer
  late final Output<List<String>> protocols;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether or not performance for your Amazon S3 directories is optimized. This is disabled by default. See <span pulumi-lang-nodejs="`s3StorageOptions`" pulumi-lang-dotnet="`S3StorageOptions`" pulumi-lang-go="`s3StorageOptions`" pulumi-lang-python="`s3_storage_options`" pulumi-lang-yaml="`s3StorageOptions`" pulumi-lang-java="`s3StorageOptions`">`s3_storage_options`</span> Block below for details.
  late final Output<ServerS3StorageOptions> s3StorageOptions;

  /// Specifies the name of the security policy that is attached to the server. Default value is: `TransferSecurityPolicy-2018-11`. The available values are:
  /// * `TransferSecurityPolicy-2018-11`
  /// * `TransferSecurityPolicy-2020-06`
  /// * `TransferSecurityPolicy-2022-03`
  /// * `TransferSecurityPolicy-2023-05`
  /// * `TransferSecurityPolicy-2024-01`
  /// * `TransferSecurityPolicy-2025-03`
  /// * `TransferSecurityPolicy-FIPS-2020-06`
  /// * `TransferSecurityPolicy-FIPS-2023-05`
  /// * `TransferSecurityPolicy-FIPS-2024-01`
  /// * `TransferSecurityPolicy-FIPS-2024-05`
  /// * `TransferSecurityPolicy-FIPS-2025-03`
  /// * `TransferSecurityPolicy-PQ-SSH-Experimental-2023-04`
  /// * `TransferSecurityPolicy-PQ-SSH-FIPS-Experimental-2023-04`
  /// * `TransferSecurityPolicy-Restricted-2018-11`
  /// * `TransferSecurityPolicy-Restricted-2020-06`
  /// * `TransferSecurityPolicy-Restricted-2024-06`
  /// * `TransferSecurityPolicy-SshAuditCompliant-2025-02`
  /// * `TransferSecurityPolicy-AS2Restricted-2025-07`
  ///
  /// See [Security policies for AWS Transfer Family servers](https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html) for details.
  late final Output<String?> securityPolicyName;

  /// For SFTP-enabled servers with an <span pulumi-lang-nodejs="`identityProviderType`" pulumi-lang-dotnet="`IdentityProviderType`" pulumi-lang-go="`identityProviderType`" pulumi-lang-python="`identity_provider_type`" pulumi-lang-yaml="`identityProviderType`" pulumi-lang-java="`identityProviderType`">`identity_provider_type`</span> of `API_GATEWAY` or `AWS_LAMBDA`. Valid values are `PASSWORD`, `PUBLIC_KEY`, `PUBLIC_KEY_OR_PASSWORD` and `PUBLIC_KEY_AND_PASSWORD`. Default value is: `PUBLIC_KEY_OR_PASSWORD`.
  late final Output<String> sftpAuthenticationMethods;

  /// A set of ARNs of destinations that will receive structured logs from the transfer server such as CloudWatch Log Group ARNs. If provided this enables the transfer server to emit structured logs to the specified locations.
  late final Output<List<String>?> structuredLogDestinations;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// URL of the service endpoint used to authenticate users with an <span pulumi-lang-nodejs="`identityProviderType`" pulumi-lang-dotnet="`IdentityProviderType`" pulumi-lang-go="`identityProviderType`" pulumi-lang-python="`identity_provider_type`" pulumi-lang-yaml="`identityProviderType`" pulumi-lang-java="`identityProviderType`">`identity_provider_type`</span> of `API_GATEWAY`.
  late final Output<String?> url;

  /// Specifies the workflow details. See <span pulumi-lang-nodejs="`workflowDetails`" pulumi-lang-dotnet="`WorkflowDetails`" pulumi-lang-go="`workflowDetails`" pulumi-lang-python="`workflow_details`" pulumi-lang-yaml="`workflowDetails`" pulumi-lang-java="`workflowDetails`">`workflow_details`</span> Block below for details.
  late final Output<ServerWorkflowDetails?> workflowDetails;

  Server(
    String name, {
    ServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/server:Server',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.certificate = Output.createUnknown<String?>();
    this.directoryId = Output.createUnknown<String?>();
    this.domain = Output.createUnknown<String?>();
    this.endpoint = Output.createUnknown<String>();
    this.endpointDetails = Output.createUnknown<ServerEndpointDetails?>();
    this.endpointType = Output.createUnknown<String?>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.function = Output.createUnknown<String?>();
    this.hostKey = Output.createUnknown<String?>();
    this.hostKeyFingerprint = Output.createUnknown<String>();
    this.identityProviderType = Output.createUnknown<String?>();
    this.invocationRole = Output.createUnknown<String?>();
    this.loggingRole = Output.createUnknown<String?>();
    this.postAuthenticationLoginBanner = Output.createUnknown<String?>();
    this.preAuthenticationLoginBanner = Output.createUnknown<String?>();
    this.protocolDetails = Output.createUnknown<ServerProtocolDetails>();
    this.protocols = Output.createUnknown<List<String>>();
    this.region = Output.createUnknown<String>();
    this.s3StorageOptions = Output.createUnknown<ServerS3StorageOptions>();
    this.securityPolicyName = Output.createUnknown<String?>();
    this.sftpAuthenticationMethods = Output.createUnknown<String>();
    this.structuredLogDestinations = Output.createUnknown<List<String>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.url = Output.createUnknown<String?>();
    this.workflowDetails = Output.createUnknown<ServerWorkflowDetails?>();
  }
}
