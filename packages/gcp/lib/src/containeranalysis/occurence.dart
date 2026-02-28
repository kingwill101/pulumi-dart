import 'package:pulumi/pulumi.dart' as pulumi;
import 'occurence_args.dart';
import 'occurence_attestation.dart';

/// An occurrence is an instance of a Note, or type of analysis that
/// can be done for a resource.
///
///
/// To get more information about Occurrence, see:
///
/// * [API documentation](https://cloud.google.com/container-analysis/api/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/container-analysis/)
///
/// ## Example Usage
///
/// ### Container Analysis Occurrence Kms
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "attestation-note",
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "Attestor Note",
///         },
///     },
/// });
/// const keyring = gcp.kms.getKMSKeyRing({
///     name: "my-key-ring",
///     location: "global",
/// });
/// const crypto_key = keyring.then(keyring => gcp.kms.getKMSCryptoKey({
///     name: "my-key",
///     keyRing: keyring.id,
/// }));
/// const version = crypto_key.then(crypto_key => gcp.kms.getKMSCryptoKeyVersion({
///     cryptoKey: crypto_key.id,
/// }));
/// const attestor = new gcp.binaryauthorization.Attestor("attestor", {
///     name: "attestor",
///     attestationAuthorityNote: {
///         noteReference: note.name,
///         publicKeys: [{
///             id: version.then(version => version.id),
///             pkixPublicKey: {
///                 publicKeyPem: version.then(version => version.publicKeys?.[0]?.pem),
///                 signatureAlgorithm: version.then(version => version.publicKeys?.[0]?.algorithm),
///             },
///         }],
///     },
/// });
/// const occurrence = new gcp.containeranalysis.Occurence("occurrence", {
///     resourceUri: "gcr.io/my-project/my-image",
///     noteName: note.id,
///     attestation: {
///         serializedPayload: std.filebase64({
///             input: "path/to/my/payload.json",
///         }).then(invoke => invoke.result),
///         signatures: [{
///             publicKeyId: version.then(version => version.id),
///             serializedPayload: std.filebase64({
///                 input: "path/to/my/payload.json.sig",
///             }).then(invoke => invoke.result),
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// note = gcp.containeranalysis.Note("note",
///     name="attestation-note",
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "Attestor Note",
///         },
///     })
/// keyring = gcp.kms.get_kms_key_ring(name="my-key-ring",
///     location="global")
/// crypto_key = gcp.kms.get_kms_crypto_key(name="my-key",
///     key_ring=keyring.id)
/// version = gcp.kms.get_kms_crypto_key_version(crypto_key=crypto_key.id)
/// attestor = gcp.binaryauthorization.Attestor("attestor",
///     name="attestor",
///     attestation_authority_note={
///         "note_reference": note.name,
///         "public_keys": [{
///             "id": version.id,
///             "pkix_public_key": {
///                 "public_key_pem": version.public_keys[0].pem,
///                 "signature_algorithm": version.public_keys[0].algorithm,
///             },
///         }],
///     })
/// occurrence = gcp.containeranalysis.Occurence("occurrence",
///     resource_uri="gcr.io/my-project/my-image",
///     note_name=note.id,
///     attestation={
///         "serialized_payload": std.filebase64(input="path/to/my/payload.json").result,
///         "signatures": [{
///             "public_key_id": version.id,
///             "serialized_payload": std.filebase64(input="path/to/my/payload.json.sig").result,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var note = new Gcp.ContainerAnalysis.Note("note", new()
///     {
///         Name = "attestation-note",
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "Attestor Note",
///             },
///         },
///     });
///
///     var keyring = Gcp.Kms.GetKMSKeyRing.Invoke(new()
///     {
///         Name = "my-key-ring",
///         Location = "global",
///     });
///
///     var crypto_key = Gcp.Kms.GetKMSCryptoKey.Invoke(new()
///     {
///         Name = "my-key",
///         KeyRing = keyring.Apply(getKMSKeyRingResult => getKMSKeyRingResult.Id),
///     });
///
///     var version = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = crypto_key.Apply(getKMSCryptoKeyResult => getKMSCryptoKeyResult.Id),
///     });
///
///     var attestor = new Gcp.BinaryAuthorization.Attestor("attestor", new()
///     {
///         Name = "attestor",
///         AttestationAuthorityNote = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNoteArgs
///         {
///             NoteReference = note.Name,
///             PublicKeys = new[]
///             {
///                 new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNotePublicKeyArgs
///                 {
///                     Id = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Id),
///                     PkixPublicKey = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs
///                     {
///                         PublicKeyPem = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.PublicKeys[0]?.Pem),
///                         SignatureAlgorithm = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.PublicKeys[0]?.Algorithm),
///                     },
///                 },
///             },
///         },
///     });
///
///     var occurrence = new Gcp.ContainerAnalysis.Occurence("occurrence", new()
///     {
///         ResourceUri = "gcr.io/my-project/my-image",
///         NoteName = note.Id,
///         Attestation = new Gcp.ContainerAnalysis.Inputs.OccurenceAttestationArgs
///         {
///             SerializedPayload = Std.Filebase64.Invoke(new()
///             {
///                 Input = "path/to/my/payload.json",
///             }).Apply(invoke => invoke.Result),
///             Signatures = new[]
///             {
///                 new Gcp.ContainerAnalysis.Inputs.OccurenceAttestationSignatureArgs
///                 {
///                     PublicKeyId = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Id),
///                     SerializedPayload = Std.Filebase64.Invoke(new()
///                     {
///                         Input = "path/to/my/payload.json.sig",
///                     }).Apply(invoke => invoke.Result),
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/binaryauthorization"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		note, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name: pulumi.String("attestation-note"),
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("Attestor Note"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyring, err := kms.GetKMSKeyRing(ctx, &kms.GetKMSKeyRingArgs{
/// 			Name:     "my-key-ring",
/// 			Location: "global",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		crypto_key, err := kms.GetKMSCryptoKey(ctx, &kms.GetKMSCryptoKeyArgs{
/// 			Name:    "my-key",
/// 			KeyRing: keyring.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		version, err := kms.GetKMSCryptoKeyVersion(ctx, &kms.GetKMSCryptoKeyVersionArgs{
/// 			CryptoKey: crypto_key.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = binaryauthorization.NewAttestor(ctx, "attestor", &binaryauthorization.AttestorArgs{
/// 			Name: pulumi.String("attestor"),
/// 			AttestationAuthorityNote: &binaryauthorization.AttestorAttestationAuthorityNoteArgs{
/// 				NoteReference: note.Name,
/// 				PublicKeys: binaryauthorization.AttestorAttestationAuthorityNotePublicKeyArray{
/// 					&binaryauthorization.AttestorAttestationAuthorityNotePublicKeyArgs{
/// 						Id: pulumi.String(version.Id),
/// 						PkixPublicKey: &binaryauthorization.AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs{
/// 							PublicKeyPem:       pulumi.String(version.PublicKeys[0].Pem),
/// 							SignatureAlgorithm: pulumi.String(version.PublicKeys[0].Algorithm),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "path/to/my/payload.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase641, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "path/to/my/payload.json.sig",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containeranalysis.NewOccurence(ctx, "occurrence", &containeranalysis.OccurenceArgs{
/// 			ResourceUri: pulumi.String("gcr.io/my-project/my-image"),
/// 			NoteName:    note.ID(),
/// 			Attestation: &containeranalysis.OccurenceAttestationArgs{
/// 				SerializedPayload: pulumi.String(invokeFilebase64.Result),
/// 				Signatures: containeranalysis.OccurenceAttestationSignatureArray{
/// 					&containeranalysis.OccurenceAttestationSignatureArgs{
/// 						PublicKeyId:       pulumi.String(version.Id),
/// 						SerializedPayload: invokeFilebase641.Result,
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.containeranalysis.Note;
/// import com.pulumi.gcp.containeranalysis.NoteArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityHintArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSKeyRingArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
/// import com.pulumi.gcp.binaryauthorization.Attestor;
/// import com.pulumi.gcp.binaryauthorization.AttestorArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNoteArgs;
/// import com.pulumi.gcp.containeranalysis.Occurence;
/// import com.pulumi.gcp.containeranalysis.OccurenceArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.OccurenceAttestationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var note = new Note("note", NoteArgs.builder()
///             .name("attestation-note")
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("Attestor Note")
///                     .build())
///                 .build())
///             .build());
///
///         final var keyring = KmsFunctions.getKMSKeyRing(GetKMSKeyRingArgs.builder()
///             .name("my-key-ring")
///             .location("global")
///             .build());
///
///         final var crypto-key = KmsFunctions.getKMSCryptoKey(GetKMSCryptoKeyArgs.builder()
///             .name("my-key")
///             .keyRing(keyring.id())
///             .build());
///
///         final var version = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(crypto_key.id())
///             .build());
///
///         var attestor = new Attestor("attestor", AttestorArgs.builder()
///             .name("attestor")
///             .attestationAuthorityNote(AttestorAttestationAuthorityNoteArgs.builder()
///                 .noteReference(note.name())
///                 .publicKeys(AttestorAttestationAuthorityNotePublicKeyArgs.builder()
///                     .id(version.id())
///                     .pkixPublicKey(AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs.builder()
///                         .publicKeyPem(version.publicKeys()[0].pem())
///                         .signatureAlgorithm(version.publicKeys()[0].algorithm())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var occurrence = new Occurence("occurrence", OccurenceArgs.builder()
///             .resourceUri("gcr.io/my-project/my-image")
///             .noteName(note.id())
///             .attestation(OccurenceAttestationArgs.builder()
///                 .serializedPayload(StdFunctions.filebase64(Filebase64Args.builder()
///                     .input("path/to/my/payload.json")
///                     .build()).result())
///                 .signatures(OccurenceAttestationSignatureArgs.builder()
///                     .publicKeyId(version.id())
///                     .serializedPayload(StdFunctions.filebase64(Filebase64Args.builder()
///                         .input("path/to/my/payload.json.sig")
///                         .build()).result())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   attestor:
///     type: gcp:binaryauthorization:Attestor
///     properties:
///       name: attestor
///       attestationAuthorityNote:
///         noteReference: ${note.name}
///         publicKeys:
///           - id: ${version.id}
///             pkixPublicKey:
///               publicKeyPem: ${version.publicKeys[0].pem}
///               signatureAlgorithm: ${version.publicKeys[0].algorithm}
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: attestation-note
///       attestationAuthority:
///         hint:
///           humanReadableName: Attestor Note
///   occurrence:
///     type: gcp:containeranalysis:Occurence
///     properties:
///       resourceUri: gcr.io/my-project/my-image
///       noteName: ${note.id}
///       attestation:
///         serializedPayload:
///           fn::invoke:
///             function: std:filebase64
///             arguments:
///               input: path/to/my/payload.json
///             return: result
///         signatures:
///           - publicKeyId: ${version.id}
///             serializedPayload:
///               fn::invoke:
///                 function: std:filebase64
///                 arguments:
///                   input: path/to/my/payload.json.sig
///                 return: result
/// variables:
///   keyring:
///     fn::invoke:
///       function: gcp:kms:getKMSKeyRing
///       arguments:
///         name: my-key-ring
///         location: global
///   crypto-key:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKey
///       arguments:
///         name: my-key
///         keyRing: ${keyring.id}
///   version:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKeyVersion
///       arguments:
///         cryptoKey: ${["crypto-key"].id}
/// ```
///
///
/// ## Import
///
/// Occurrence can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/occurrences/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Occurrence can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/occurence:Occurence default projects/{{project}}/occurrences/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/occurence:Occurence default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/occurence:Occurence default {{name}}
/// ```
class Occurence extends pulumi.CustomResource {
  /// Occurrence that represents a single "attestation". The authenticity
  /// of an attestation can be verified using the attached signature.
  /// If the verifier trusts the public key of the signer, then verifying
  /// the signature is sufficient to establish trust. In this circumstance,
  /// the authority to which this attestation is attached is primarily
  /// useful for lookup (how to find this attestation if you already
  /// know the authority and artifact to be verified) and intent (for
  /// which authority this attestation was intended to sign.
  /// Structure is documented below.
  late final pulumi.Output<OccurenceAttestation> attestation;

  /// The time when the repository was created.
  late final pulumi.Output<String> createTime;

  /// The note kind which explicitly denotes which of the occurrence
  /// details are specified. This field can be used as a filter in list
  /// requests.
  late final pulumi.Output<String> kind;

  /// The name of the occurrence.
  late final pulumi.Output<String> name;

  /// The analysis note associated with this occurrence, in the form of
  /// projects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a
  /// filter in list requests.
  late final pulumi.Output<String> noteName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A description of actions that can be taken to remedy the note.
  late final pulumi.Output<String?> remediation;

  /// Required. Immutable. A URI that represents the resource for which
  /// the occurrence applies. For example,
  /// https://gcr.io/project/image@sha256:123abc for a Docker image.
  late final pulumi.Output<String> resourceUri;

  /// The time when the repository was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Occurence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Occurence]. {@macro pulumi_containeranalysis_occurence_occurence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Occurence(
    String name, {
    OccurenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:containeranalysis/occurence:Occurence',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attestation = registerOutput<OccurenceAttestation>('attestation');
    this.createTime = registerOutput<String>('createTime');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.noteName = registerOutput<String>('noteName');
    this.project = registerOutput<String>('project');
    this.remediation = registerOutput<String?>('remediation');
    this.resourceUri = registerOutput<String>('resourceUri');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
