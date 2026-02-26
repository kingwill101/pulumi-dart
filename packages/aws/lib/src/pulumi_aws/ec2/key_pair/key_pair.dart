import 'package:pulumi/pulumi.dart';
import 'key_pair_args.dart';

/// Provides an [EC2 key pair](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) resource. A key pair is used to control login access to EC2 instances.
///
/// Currently this resource requires an existing user-supplied key pair. This key pair's public key will be registered with AWS to allow logging-in to EC2 instances.
///
/// When importing an existing key pair the public key material may be in any format supported by AWS. Supported formats (per the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws)) are:
///
/// * OpenSSH public key format (the format in ~/.ssh/authorized_keys)
/// * Base64 encoded DER format
/// * SSH public key file format as specified in RFC4716
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const deployer = new aws.ec2.KeyPair("deployer", {
/// keyName: "deployer-key",
/// publicKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// deployer = aws.ec2.KeyPair("deployer",
/// key_name="deployer-key",
/// public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var deployer = new Aws.Ec2.KeyPair("deployer", new()
/// {
/// KeyName = "deployer-key",
/// PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewKeyPair(ctx, "deployer", &ec2.KeyPairArgs{
/// KeyName:   pulumi.String("deployer-key"),
/// PublicKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"),
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
/// import com.pulumi.aws.ec2.KeyPair;
/// import com.pulumi.aws.ec2.KeyPairArgs;
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
/// var deployer = new KeyPair("deployer", KeyPairArgs.builder()
/// .keyName("deployer-key")
/// .publicKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// deployer:
/// type: aws:ec2:KeyPair
/// properties:
/// keyName: deployer-key
/// publicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Key Pairs using the <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/keyPair:KeyPair deployer deployer-key
/// ```
///
/// > **NOTE:** The AWS API does not include the public key in the response, so `pulumi up` will attempt to replace the key pair. There is currently no supported workaround for this limitation.
class KeyPair extends CustomResource {
  /// The key pair ARN.
  late final Output<String> arn;

  /// The MD5 public key fingerprint as specified in section 4 of RFC 4716.
  late final Output<String> fingerprint;

  /// The name for the key pair. If neither <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span> nor <span pulumi-lang-nodejs="`keyNamePrefix`" pulumi-lang-dotnet="`KeyNamePrefix`" pulumi-lang-go="`keyNamePrefix`" pulumi-lang-python="`key_name_prefix`" pulumi-lang-yaml="`keyNamePrefix`" pulumi-lang-java="`keyNamePrefix`">`key_name_prefix`</span> is provided, the provider will create a unique key name.
  late final Output<String> keyName;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span>. If neither <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span> nor <span pulumi-lang-nodejs="`keyNamePrefix`" pulumi-lang-dotnet="`KeyNamePrefix`" pulumi-lang-go="`keyNamePrefix`" pulumi-lang-python="`key_name_prefix`" pulumi-lang-yaml="`keyNamePrefix`" pulumi-lang-java="`keyNamePrefix`">`key_name_prefix`</span> is provided, the provider will create a unique key name.
  late final Output<String> keyNamePrefix;

  /// The key pair ID.
  late final Output<String> keyPairId;

  /// The type of key pair.
  late final Output<String> keyType;

  /// The public key material.
  late final Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  KeyPair(
    String name, {
    KeyPairArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/keyPair:KeyPair',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.keyName = registerOutput<String>('keyName');
    this.keyNamePrefix = registerOutput<String>('keyNamePrefix');
    this.keyPairId = registerOutput<String>('keyPairId');
    this.keyType = registerOutput<String>('keyType');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
