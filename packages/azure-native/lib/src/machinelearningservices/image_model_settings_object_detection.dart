// ignore_for_file: unused_element, unnecessary_cast

import 'mlflow_model_job_input.dart';

/// Settings used for training the model.
/// For more information on the available settings please visit the official documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
class ImageModelSettingsObjectDetection {
  /// Settings for advanced scenarios.
  final String? advancedSettings;
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final bool? amsGradient;
  /// Settings for using Augmentations.
  final String? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final double? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final double? beta2;
  /// Maximum number of detections per image, for all classes. Must be a positive integer.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final int? boxDetectionsPerImage;
  /// During inference, only return proposals with a classification score greater than
  /// BoxScoreThreshold. Must be a float in the range[0, 1].
  final double? boxScoreThreshold;
  /// Frequency to store model checkpoints. Must be a positive integer.
  final int? checkpointFrequency;
  /// The pretrained checkpoint model for incremental training.
  final MLFlowModelJobInput? checkpointModel;
  /// The id of a previous run that has a pretrained checkpoint for incremental training.
  final String? checkpointRunId;
  /// Whether to use distributed training.
  final bool? distributed;
  /// Enable early stopping logic during training.
  final bool? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final int? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final int? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final bool? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final int? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final int? gradientAccumulationStep;
  /// Image size for train and validation. Must be a positive integer.
  /// Note: The training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final int? imageSize;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final int? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final double? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final String? learningRateScheduler;
  /// Maximum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final int? maxSize;
  /// Minimum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final int? minSize;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final String? modelName;
  /// Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// Note: training run may get into CUDA OOM if the model size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final String? modelSize;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final double? momentum;
  /// Enable multi-scale image by varying image size by +/- 50%.
  /// Note: training run may get into CUDA OOM if no sufficient GPU memory.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final bool? multiScale;
  /// Enable nesterov when optimizer is 'sgd'.
  final bool? nesterov;
  /// IOU threshold used during inference in NMS post processing. Must be a float in the range [0, 1].
  final double? nmsIouThreshold;
  /// Number of training epochs. Must be a positive integer.
  final int? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final int? numberOfWorkers;
  /// Type of optimizer.
  final String? optimizer;
  /// Random seed to be used when using deterministic training.
  final int? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final double? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final int? stepLRStepSize;
  /// The grid size to use for tiling each image. Note: TileGridSize must not be
  /// None to enable small object detection logic. A string containing two integers in mxn format.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final String? tileGridSize;
  /// Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final double? tileOverlapRatio;
  /// The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// Used in validation/ inference. Must be float in the range [0, 1].
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final double? tilePredictionsNmsThreshold;
  /// Training batch size. Must be a positive integer.
  final int? trainingBatchSize;
  /// Validation batch size. Must be a positive integer.
  final int? validationBatchSize;
  /// IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  final double? validationIouThreshold;
  /// Metric computation method to use for validation metrics.
  final String? validationMetricType;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final double? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final int? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final double? weightDecay;

  /// Creates a new [ImageModelSettingsObjectDetection].
  /// [advancedSettings] Settings for advanced scenarios.
  /// [amsGradient] Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  /// [augmentations] Settings for using Augmentations.
  /// [beta1] Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [beta2] Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [boxDetectionsPerImage] Maximum number of detections per image, for all classes. Must be a positive integer.
  /// [boxScoreThreshold] During inference, only return proposals with a classification score greater than
  /// [checkpointFrequency] Frequency to store model checkpoints. Must be a positive integer.
  /// [checkpointModel] The pretrained checkpoint model for incremental training.
  /// [checkpointRunId] The id of a previous run that has a pretrained checkpoint for incremental training.
  /// [distributed] Whether to use distributed training.
  /// [earlyStopping] Enable early stopping logic during training.
  /// [earlyStoppingDelay] Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// [earlyStoppingPatience] Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// [enableOnnxNormalization] Enable normalization when exporting ONNX model.
  /// [evaluationFrequency] Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  /// [gradientAccumulationStep] Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// [imageSize] Image size for train and validation. Must be a positive integer.
  /// [layersToFreeze] Number of layers to freeze for the model. Must be a positive integer.
  /// [learningRate] Initial learning rate. Must be a float in the range [0, 1].
  /// [learningRateScheduler] Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  /// [maxSize] Maximum size of the image to be rescaled before feeding it to the backbone.
  /// [minSize] Minimum size of the image to be rescaled before feeding it to the backbone.
  /// [modelName] Name of the model to use for training.
  /// [modelSize] Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// [momentum] Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  /// [multiScale] Enable multi-scale image by varying image size by +/- 50%.
  /// [nesterov] Enable nesterov when optimizer is 'sgd'.
  /// [nmsIouThreshold] IOU threshold used during inference in NMS post processing. Must be a float in the range [0, 1].
  /// [numberOfEpochs] Number of training epochs. Must be a positive integer.
  /// [numberOfWorkers] Number of data loader workers. Must be a non-negative integer.
  /// [optimizer] Type of optimizer.
  /// [randomSeed] Random seed to be used when using deterministic training.
  /// [stepLRGamma] Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  /// [stepLRStepSize] Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  /// [tileGridSize] The grid size to use for tiling each image. Note: TileGridSize must not be
  /// [tileOverlapRatio] Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// [tilePredictionsNmsThreshold] The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// [trainingBatchSize] Training batch size. Must be a positive integer.
  /// [validationBatchSize] Validation batch size. Must be a positive integer.
  /// [validationIouThreshold] IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  /// [validationMetricType] Metric computation method to use for validation metrics.
  /// [warmupCosineLRCycles] Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  /// [warmupCosineLRWarmupEpochs] Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  /// [weightDecay] Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  ImageModelSettingsObjectDetection({
    this.advancedSettings,
    this.amsGradient,
    this.augmentations,
    this.beta1,
    this.beta2,
    this.boxDetectionsPerImage,
    this.boxScoreThreshold,
    this.checkpointFrequency,
    this.checkpointModel,
    this.checkpointRunId,
    this.distributed,
    this.earlyStopping,
    this.earlyStoppingDelay,
    this.earlyStoppingPatience,
    this.enableOnnxNormalization,
    this.evaluationFrequency,
    this.gradientAccumulationStep,
    this.imageSize,
    this.layersToFreeze,
    this.learningRate,
    this.learningRateScheduler,
    this.maxSize,
    this.minSize,
    this.modelName,
    this.modelSize,
    this.momentum,
    this.multiScale,
    this.nesterov,
    this.nmsIouThreshold,
    this.numberOfEpochs,
    this.numberOfWorkers,
    this.optimizer,
    this.randomSeed,
    this.stepLRGamma,
    this.stepLRStepSize,
    this.tileGridSize,
    this.tileOverlapRatio,
    this.tilePredictionsNmsThreshold,
    this.trainingBatchSize,
    this.validationBatchSize,
    this.validationIouThreshold,
    this.validationMetricType,
    this.warmupCosineLRCycles,
    this.warmupCosineLRWarmupEpochs,
    this.weightDecay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?advancedSettings,
      'amsGradient': ?amsGradient,
      'augmentations': ?augmentations,
      'beta1': ?beta1,
      'beta2': ?beta2,
      'boxDetectionsPerImage': ?boxDetectionsPerImage,
      'boxScoreThreshold': ?boxScoreThreshold,
      'checkpointFrequency': ?checkpointFrequency,
      'checkpointModel': ?checkpointModel == null ? null : checkpointModel!.toMap(),
      'checkpointRunId': ?checkpointRunId,
      'distributed': ?distributed,
      'earlyStopping': ?earlyStopping,
      'earlyStoppingDelay': ?earlyStoppingDelay,
      'earlyStoppingPatience': ?earlyStoppingPatience,
      'enableOnnxNormalization': ?enableOnnxNormalization,
      'evaluationFrequency': ?evaluationFrequency,
      'gradientAccumulationStep': ?gradientAccumulationStep,
      'imageSize': ?imageSize,
      'layersToFreeze': ?layersToFreeze,
      'learningRate': ?learningRate,
      'learningRateScheduler': ?learningRateScheduler,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'modelName': ?modelName,
      'modelSize': ?modelSize,
      'momentum': ?momentum,
      'multiScale': ?multiScale,
      'nesterov': ?nesterov,
      'nmsIouThreshold': ?nmsIouThreshold,
      'numberOfEpochs': ?numberOfEpochs,
      'numberOfWorkers': ?numberOfWorkers,
      'optimizer': ?optimizer,
      'randomSeed': ?randomSeed,
      'stepLRGamma': ?stepLRGamma,
      'stepLRStepSize': ?stepLRStepSize,
      'tileGridSize': ?tileGridSize,
      'tileOverlapRatio': ?tileOverlapRatio,
      'tilePredictionsNmsThreshold': ?tilePredictionsNmsThreshold,
      'trainingBatchSize': ?trainingBatchSize,
      'validationBatchSize': ?validationBatchSize,
      'validationIouThreshold': ?validationIouThreshold,
      'validationMetricType': ?validationMetricType,
      'warmupCosineLRCycles': ?warmupCosineLRCycles,
      'warmupCosineLRWarmupEpochs': ?warmupCosineLRWarmupEpochs,
      'weightDecay': ?weightDecay,
    };
  }

  factory ImageModelSettingsObjectDetection.fromMap(Map<String, dynamic> map) {
    return ImageModelSettingsObjectDetection(
      advancedSettings: map['advancedSettings'] == null ? null : map['advancedSettings'] as String,
      amsGradient: map['amsGradient'] == null ? null : map['amsGradient'] as bool,
      augmentations: map['augmentations'] == null ? null : map['augmentations'] as String,
      beta1: map['beta1'] == null ? null : map['beta1'] as double,
      beta2: map['beta2'] == null ? null : map['beta2'] as double,
      boxDetectionsPerImage: map['boxDetectionsPerImage'] == null ? null : map['boxDetectionsPerImage'] as int,
      boxScoreThreshold: map['boxScoreThreshold'] == null ? null : map['boxScoreThreshold'] as double,
      checkpointFrequency: map['checkpointFrequency'] == null ? null : map['checkpointFrequency'] as int,
      checkpointModel: map['checkpointModel'] == null ? null : MLFlowModelJobInput.fromMap((map['checkpointModel'] as Map).cast<String, dynamic>()),
      checkpointRunId: map['checkpointRunId'] == null ? null : map['checkpointRunId'] as String,
      distributed: map['distributed'] == null ? null : map['distributed'] as bool,
      earlyStopping: map['earlyStopping'] == null ? null : map['earlyStopping'] as bool,
      earlyStoppingDelay: map['earlyStoppingDelay'] == null ? null : map['earlyStoppingDelay'] as int,
      earlyStoppingPatience: map['earlyStoppingPatience'] == null ? null : map['earlyStoppingPatience'] as int,
      enableOnnxNormalization: map['enableOnnxNormalization'] == null ? null : map['enableOnnxNormalization'] as bool,
      evaluationFrequency: map['evaluationFrequency'] == null ? null : map['evaluationFrequency'] as int,
      gradientAccumulationStep: map['gradientAccumulationStep'] == null ? null : map['gradientAccumulationStep'] as int,
      imageSize: map['imageSize'] == null ? null : map['imageSize'] as int,
      layersToFreeze: map['layersToFreeze'] == null ? null : map['layersToFreeze'] as int,
      learningRate: map['learningRate'] == null ? null : map['learningRate'] as double,
      learningRateScheduler: map['learningRateScheduler'] == null ? null : map['learningRateScheduler'] as String,
      maxSize: map['maxSize'] == null ? null : map['maxSize'] as int,
      minSize: map['minSize'] == null ? null : map['minSize'] as int,
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      modelSize: map['modelSize'] == null ? null : map['modelSize'] as String,
      momentum: map['momentum'] == null ? null : map['momentum'] as double,
      multiScale: map['multiScale'] == null ? null : map['multiScale'] as bool,
      nesterov: map['nesterov'] == null ? null : map['nesterov'] as bool,
      nmsIouThreshold: map['nmsIouThreshold'] == null ? null : map['nmsIouThreshold'] as double,
      numberOfEpochs: map['numberOfEpochs'] == null ? null : map['numberOfEpochs'] as int,
      numberOfWorkers: map['numberOfWorkers'] == null ? null : map['numberOfWorkers'] as int,
      optimizer: map['optimizer'] == null ? null : map['optimizer'] as String,
      randomSeed: map['randomSeed'] == null ? null : map['randomSeed'] as int,
      stepLRGamma: map['stepLRGamma'] == null ? null : map['stepLRGamma'] as double,
      stepLRStepSize: map['stepLRStepSize'] == null ? null : map['stepLRStepSize'] as int,
      tileGridSize: map['tileGridSize'] == null ? null : map['tileGridSize'] as String,
      tileOverlapRatio: map['tileOverlapRatio'] == null ? null : map['tileOverlapRatio'] as double,
      tilePredictionsNmsThreshold: map['tilePredictionsNmsThreshold'] == null ? null : map['tilePredictionsNmsThreshold'] as double,
      trainingBatchSize: map['trainingBatchSize'] == null ? null : map['trainingBatchSize'] as int,
      validationBatchSize: map['validationBatchSize'] == null ? null : map['validationBatchSize'] as int,
      validationIouThreshold: map['validationIouThreshold'] == null ? null : map['validationIouThreshold'] as double,
      validationMetricType: map['validationMetricType'] == null ? null : map['validationMetricType'] as String,
      warmupCosineLRCycles: map['warmupCosineLRCycles'] == null ? null : map['warmupCosineLRCycles'] as double,
      warmupCosineLRWarmupEpochs: map['warmupCosineLRWarmupEpochs'] == null ? null : map['warmupCosineLRWarmupEpochs'] as int,
      weightDecay: map['weightDecay'] == null ? null : map['weightDecay'] as double,
    );
  }
}

